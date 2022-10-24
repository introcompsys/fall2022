grep "index" _review/* | awk '{print $2}' >> activities/review-files.md
grep "index" _prepare/* | awk '{print $2}' >> activities/prepare-files.md
grep "index" _practice/* | awk '{print $2}' >> activities/practice-files.md
