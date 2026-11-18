.class public Lc/a/a/b/f/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/a/b/f/a;->onEvent(Lcom/alibaba/ailabs/ipc/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/alibaba/ailabs/ipc/event/Event;

.field public final synthetic c:Lc/a/a/b/f/a;


# direct methods
.method public constructor <init>(Lc/a/a/b/f/a;Lcom/alibaba/ailabs/ipc/event/Event;)V
    .locals 0

    iput-object p1, p0, Lc/a/a/b/f/a$a;->c:Lc/a/a/b/f/a;

    iput-object p2, p0, Lc/a/a/b/f/a$a;->b:Lcom/alibaba/ailabs/ipc/event/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/a/a/b/f/a$a;->c:Lc/a/a/b/f/a;

    invoke-virtual {v0}, Lc/a/a/b/f/a;->a()Lc/a/a/b/h/a;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/b/f/a$a;->b:Lcom/alibaba/ailabs/ipc/event/Event;

    invoke-virtual {v0, v1}, Lc/a/a/b/h/a;->onEvent(Lcom/alibaba/ailabs/ipc/event/Event;)V

    return-void
.end method
