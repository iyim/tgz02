.class public Lc/b/a/b/j/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/b/j/b/c;


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;

.field public static final o:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Package: (.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->a:Ljava/util/regex/Pattern;

    const-string v0, "Total frames rendered: (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->b:Ljava/util/regex/Pattern;

    const-string v0, "\\s*Version: (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->c:Ljava/util/regex/Pattern;

    const-string v0, "\\s*Stats since: (\\d+)ns"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->d:Ljava/util/regex/Pattern;

    const-string v0, "\\s*Stats end: (\\d+)ns"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->e:Ljava/util/regex/Pattern;

    const-string v0, "Janky frames: (\\d+) \\(.+\\%\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->f:Ljava/util/regex/Pattern;

    const-string v0, "50th percentile: (\\d+)ms"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->g:Ljava/util/regex/Pattern;

    const-string v0, "90th percentile: (\\d+)ms"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->h:Ljava/util/regex/Pattern;

    const-string v0, "95th percentile: (\\d+)ms"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->i:Ljava/util/regex/Pattern;

    const-string v0, "99th percentile: (\\d+)ms"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->j:Ljava/util/regex/Pattern;

    const-string v0, "\\s*Number Missed Vsync: (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->k:Ljava/util/regex/Pattern;

    const-string v0, "\\s*Number High input latency: (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->l:Ljava/util/regex/Pattern;

    const-string v0, "\\s*Number Slow UI thread: (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->m:Ljava/util/regex/Pattern;

    const-string v0, "\\s*Number Slow bitmap uploads: (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->n:Ljava/util/regex/Pattern;

    const-string v0, "\\s*Number Slow issue draw commands: (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/b/a/b/j/b/b;->o:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
