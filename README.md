# Relate Issues

https://gitlab.com/gitlab-org/gitlab-foss/-/issues/15140

# Reproduce

Run script: `reproduce.sh`, and Output

```bash
Initialized empty Git repository in /tmp/gitlab-pr-view-diff-bug/.git/
[master (root-commit) 7dbccd5] init
 1 file changed, 1 insertion(+)
 create mode 100644 init
Switched to a new branch 'pre-release'
Switched to a new branch 'common'
Switched to a new branch 'feat'
[feat 5e8b20f] file feat0
 1 file changed, 1 insertion(+)
 create mode 100644 feat0
Switched to branch 'pre-release'
Merge made by the 'recursive' strategy.
 feat0 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 feat0
Switched to branch 'common'
[common 09a3969] file cmm
 1 file changed, 1 insertion(+)
 create mode 100644 cmm
Switched to branch 'pre-release'
Merge made by the 'recursive' strategy.
 cmm | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 cmm
Switched to branch 'feat'
Merge made by the 'recursive' strategy.
 cmm | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 cmm
[feat 9d8b809] file feat1
 1 file changed, 1 insertion(+)
 create mode 100644 feat1
* 9d8b809 (HEAD -> feat) file feat1
*   b9bfda6 Merge branch 'common' into feat
|\
| | *   376c6cc (pre-release) Merge branch 'common' into pre-release
| | |\
| | |/
| |/|
| * | 09a3969 (common) file cmm
| | * 5a08d58 Merge branch 'feat' into pre-release
| |/|
| |/
|/|
* | 5e8b20f file feat0
|/
* 7dbccd5 (master) init
git diff pre-release feat
diff --git a/feat1 b/feat1
new file mode 100644
index 0000000..d7c678b
--- /dev/null
+++ b/feat1
@@ -0,0 +1 @@
+feat1
git diff pre-release..feat
diff --git a/feat1 b/feat1
new file mode 100644
index 0000000..d7c678b
--- /dev/null
+++ b/feat1
@@ -0,0 +1 @@
+feat1
git diff pre-release...feat
diff --git a/feat0 b/feat0
new file mode 100644
index 0000000..05884ff
--- /dev/null
+++ b/feat0
@@ -0,0 +1 @@
+feat0
diff --git a/feat1 b/feat1
new file mode 100644
index 0000000..d7c678b
--- /dev/null
+++ b/feat1
@@ -0,0 +1 @@
+feat1
git diff $(git merge-base pre-release feat) feat
diff --git a/feat0 b/feat0
new file mode 100644
index 0000000..05884ff
--- /dev/null
+++ b/feat0
@@ -0,0 +1 @@
+feat0
diff --git a/feat1 b/feat1
new file mode 100644
index 0000000..d7c678b
--- /dev/null
+++ b/feat1
@@ -0,0 +1 @@
+feat1
```
