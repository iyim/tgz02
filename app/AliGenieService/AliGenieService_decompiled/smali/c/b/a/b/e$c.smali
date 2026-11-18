.class public Lc/b/a/b/e$c;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/b/e;


# direct methods
.method public synthetic constructor <init>(Lc/b/a/b/e;Lc/b/a/b/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/b/e$c;->a:Lc/b/a/b/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/b/a/b/i/i;

    :goto_0
    if-eqz v2, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/b/a/b/e$c;->a:Lc/b/a/b/e;

    .line 1
    iget-object v0, v0, Lc/b/a/b/e;->b:Ljava/util/Map;

    .line 2
    iget v2, p1, Lc/b/a/b/i/i;->c:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/b/l/c;

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lc/b/a/b/l/c;->a(Lc/b/a/b/i/i;)Z

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    if-ne v0, p1, :cond_5

    .line 4
    sget-object p1, Lc/b/a/b/g/b$a;->a:Lc/b/a/b/g/b;

    const-string v0, "timenotcorrect"

    .line 5
    invoke-virtual {p1, v0}, Lc/b/a/b/g/b;->a(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_3

    return-void

    .line 6
    :cond_3
    sget-object v2, Lc/b/a/b/g/b$a;->a:Lc/b/a/b/g/b;

    .line 7
    invoke-virtual {v2, p1, v0}, Lc/b/a/b/g/b;->b(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/a/b/g/a;

    .line 8
    iget-object v3, v2, Lc/b/a/b/g/a;->b:Ljava/lang/String;

    .line 9
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 10
    iget-object v4, v2, Lc/b/a/b/g/a;->c:Ljava/lang/String;

    .line 11
    iget-object v2, v2, Lc/b/a/b/g/a;->d:Ljava/lang/String;

    .line 12
    invoke-static {v3, v4, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    move-result-object v2

    iget-object v3, p0, Lc/b/a/b/e$c;->a:Lc/b/a/b/e;

    invoke-virtual {v3, v2}, Lc/b/a/b/e;->a(Lc/b/a/b/i/i;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_4
    sget-object v1, Lc/b/a/b/g/b$a;->a:Lc/b/a/b/g/b;

    .line 14
    invoke-virtual {v1, p1, v0}, Lc/b/a/b/g/b;->a(Ljava/util/List;Ljava/lang/String;)Z

    :cond_5
    return-void
.end method
