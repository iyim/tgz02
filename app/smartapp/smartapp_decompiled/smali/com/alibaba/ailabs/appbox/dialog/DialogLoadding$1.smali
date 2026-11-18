.class Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding$1;
.super Ljava/lang/Object;
.source "DialogLoadding.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding$1;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick cancel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding$1;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->access$000(Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DialogLoadding"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding$1;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->access$000(Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding$1;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->dismiss()V

    :cond_0
    return-void
.end method
