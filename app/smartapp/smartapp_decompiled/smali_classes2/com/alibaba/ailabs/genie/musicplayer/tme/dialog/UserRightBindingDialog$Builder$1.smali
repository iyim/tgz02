.class Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$1;
.super Ljava/lang/Object;
.source "UserRightBindingDialog.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->updateNickName(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;Landroid/arch/core/util/Function;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;

.field final synthetic val$callBack:Landroid/arch/core/util/Function;

.field final synthetic val$modelBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;Landroid/arch/core/util/Function;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$1;->val$modelBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$1;->val$callBack:Landroid/arch/core/util/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;",
            ">;)V"
        }
    .end annotation

    .line 200
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;

    move-result-object p1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " tempBean : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TME-binding"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$1;->val$modelBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->setThirdNick(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->getNickName()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$1;->val$callBack:Landroid/arch/core/util/Function;

    invoke-interface {v0, p1}, Landroid/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
