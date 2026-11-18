.class Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$1;
.super Ljava/lang/Object;
.source "TMEAccountBindFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$ProtocolResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AuthDetailRequest   onFailed errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TME-AccountBindFragment"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;)V

    :cond_1
    :goto_0
    return-void
.end method
