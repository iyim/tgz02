.class Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$1;
.super Ljava/lang/Object;
.source "ValidateLockActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->access$000(Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;)V

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->access$100(Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidateLockActivityTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->access$100(Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->access$200(Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;)V

    :cond_0
    return-void
.end method
