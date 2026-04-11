import { StrapiRichText, StrapiRichTextChild } from "@/types/news.types";

function renderChildren(children: StrapiRichTextChild[]) {
  return children.map((child, j) => {
    if (child.bold && child.italic)
      return (
        <strong key={j}>
          <em>{child.text}</em>
        </strong>
      );
    if (child.bold) return <strong key={j}>{child.text}</strong>;
    if (child.italic) return <em key={j}>{child.text}</em>;
    if (child.underline) return <u key={j}>{child.text}</u>;
    return <span key={j}>{child.text}</span>;
  });
}

export function RichTextRenderer({ content }: { content: StrapiRichText[] }) {
  if (!content) return "";

  return (
    <div className="max-w-none">
      {content.map((block, i) => {
        if (block.type === "paragraph") {
          const isEmpty = block.children.every((c) => c.text === "");
          if (isEmpty) return <div key={i} className="mb-2" />;
          return (
            <p
              key={i}
              className="mb-4 text-gray-700 leading-relaxed text-base md:text-lg"
            >
              {block.children.map((child, j) => {
                if ((child as any).type === "link") {
                  return (
                    <a
                      key={j}
                      href={(child as any).url}
                      className="text-(--primary-blue) underline hover:opacity-80"
                    >
                      {renderChildren((child as any).children)}
                    </a>
                  );
                }
                return renderChildren([child]);
              })}
            </p>
          );
        }

        if (block.type === "heading") {
          const level = (block as any).level ?? 2;
          const text = block.children.map((c) => c.text).join("");
          const classes = "font-bold text-(--primary-blue) mt-8 mb-4";
          if (level === 1)
            return (
              <h1 key={i} className={`text-3xl ${classes}`}>
                {text}
              </h1>
            );
          if (level === 2)
            return (
              <h2 key={i} className={`text-2xl ${classes}`}>
                {text}
              </h2>
            );
          if (level === 3)
            return (
              <h3 key={i} className={`text-xl ${classes}`}>
                {text}
              </h3>
            );
          if (level === 4)
            return (
              <h4 key={i} className={`text-lg ${classes}`}>
                {text}
              </h4>
            );
          return (
            <h5 key={i} className={`text-base ${classes}`}>
              {text}
            </h5>
          );
        }

        if (block.type === "list") {
          const isOrdered = (block as any).format === "ordered";
          const ListTag = isOrdered ? "ol" : "ul";
          const listClass = isOrdered
            ? "list-decimal list-outside ml-6 mb-4 space-y-1"
            : "list-disc list-outside ml-6 mb-4 space-y-1";

          return (
            <ListTag key={i} className={listClass}>
              {block.children.map((item, j) => {
                const itemChildren = (item as any).children ?? [];
                return (
                  <li
                    key={j}
                    className="text-gray-700 leading-relaxed text-base md:text-lg"
                  >
                    {renderChildren(itemChildren)}
                  </li>
                );
              })}
            </ListTag>
          );
        }

        if (block.type === "quote") {
          return (
            <blockquote
              key={i}
              className="border-l-4 border-(--accent-pink) pl-4 my-6 italic text-gray-600"
            >
              {renderChildren(block.children)}
            </blockquote>
          );
        }

        if (block.type === "thematic-break") {
          return <hr key={i} className="my-8 border-gray-200" />;
        }

        return null;
      })}
    </div>
  );
}
