.class Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;
.super Ljava/lang/Object;
.source "SkillActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->loadGYL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/SkillActivity;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "loadGYL"

    const-string p2, "oneeeee"

    .line 202
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "loadGYL"

    .line 179
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;

    .line 181
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->getContent()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->getContent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->likes:Ljava/util/List;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    new-instance v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 190
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->getContent()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget v0, v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->pageSize:I

    if-ne p1, v0, :cond_0

    .line 191
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget v0, p1, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->pageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->pageIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
