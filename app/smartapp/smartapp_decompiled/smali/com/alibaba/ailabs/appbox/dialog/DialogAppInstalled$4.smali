.class Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$4;
.super Ljava/lang/Object;
.source "DialogAppInstalled.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$4;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$4;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->dismiss()V

    return-void
.end method
