# Relate Issues

https://gitlab.com/gitlab-org/gitlab-foss/-/issues/15140

# Reproduce

Run script: `reproduce.sh`, and Output

```
Initialized empty Git repository in /tmp/gitlab-prview-diff-bug/.git/
[master (root-commit) b7e20f7] init
 1 file changed, 1 insertion(+)
 create mode 100644 init
Switched to a new branch 'pre-release'
Switched to a new branch 'common'
Switched to a new branch 'feat'
[feat fc27ae5] file feat0
 1 file changed, 1 insertion(+)
 create mode 100644 feat0
Switched to branch 'pre-release'
Merge made by the 'recursive' strategy.
 feat0 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 feat0
Switched to branch 'common'
[common c0a0193] file cmm
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
[feat 3529cf7] file feat1
 1 file changed, 1 insertion(+)
 create mode 100644 feat1
* 3529cf7 (HEAD -> feat) file feat1
*   91cef45 Merge branch 'common' into feat
|\
| | *   6664e07 (pre-release) Merge branch 'common' into pre-release
| | |\
| | |/
| |/|
| * | c0a0193 (common) file cmm
| | * a1c496d Merge branch 'feat' into pre-release
| |/|
| |/
|/|
* | fc27ae5 file feat0
|/
* b7e20f7 (master) init
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
diff --git a/cmm b/cmm
new file mode 100644
index 0000000..72a7559
--- /dev/null
+++ b/cmm
@@ -0,0 +1 @@
+cmm
diff --git a/feat1 b/feat1
new file mode 100644
index 0000000..d7c678b
--- /dev/null
+++ b/feat1
@@ -0,0 +1 @@
+feat1
git diff $(git merge-base pre-release feat) feat
diff --git a/cmm b/cmm
new file mode 100644
index 0000000..72a7559
--- /dev/null
+++ b/cmm
@@ -0,0 +1 @@
+cmm
diff --git a/feat1 b/feat1
new file mode 100644
index 0000000..d7c678b
--- /dev/null
+++ b/feat1
@@ -0,0 +1 @@
+feat1
```
