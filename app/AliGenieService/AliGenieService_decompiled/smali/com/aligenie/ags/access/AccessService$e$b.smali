.class public Lcom/aligenie/ags/access/AccessService$e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aligenie/ags/access/AccessService$e;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/aligenie/ags/access/AccessService$e;


# direct methods
.method public constructor <init>(Lcom/aligenie/ags/access/AccessService$e;II)V
    .locals 0

    iput-object p1, p0, Lcom/aligenie/ags/access/AccessService$e$b;->d:Lcom/aligenie/ags/access/AccessService$e;

    iput p2, p0, Lcom/aligenie/ags/access/AccessService$e$b;->b:I

    iput p3, p0, Lcom/aligenie/ags/access/AccessService$e$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p0, Lcom/aligenie/ags/access/AccessService$e$b;->b:I

    const-string v3, "x"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v2, p0, Lcom/aligenie/ags/access/AccessService$e$b;->c:I

    const-string v3, "y"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "z"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/aligenie/ags/access/AccessService$e$b;->d:Lcom/aligenie/ags/access/AccessService$e;

    iget-object v1, v1, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    .line 1
    iget-object v1, v1, Lcom/aligenie/ags/access/AccessService;->b:Landroid/os/Handler;

    .line 2
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
