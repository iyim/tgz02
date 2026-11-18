.class public Lc/b/a/b/l/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/b/l/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/b/i/i;)Z
    .locals 3

    new-instance v0, Lc/b/a/b/g/a;

    invoke-direct {v0}, Lc/b/a/b/g/a;-><init>()V

    const-string v1, "_time"

    invoke-virtual {p1, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1
    iput-object v1, v0, Lc/b/a/b/g/a;->b:Ljava/lang/String;

    const-string v1, "_tag"

    .line 2
    invoke-virtual {p1, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lc/b/a/b/g/a;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lc/b/a/b/i/i;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lc/b/a/b/g/a;->d:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lc/b/a/b/g/b$a;->a:Lc/b/a/b/g/b;

    const-string v2, "timenotcorrect"

    .line 8
    invoke-virtual {v0, v1, v2}, Lc/b/a/b/g/b;->b(Ljava/util/List;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/b/a/b/i/i;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lc/b/a/b/l/a;

    invoke-static {p1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method
