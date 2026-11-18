.class Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;
.super Ljava/lang/Object;
.source "SkillDetailFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->loadDetail()V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 106
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v2, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    iput-object p1, v1, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    .line 110
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getSkillDetailPage"

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$000(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 112
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$100(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result v3

    .line 113
    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result v4

    .line 114
    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result v5

    .line 115
    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result v2

    .line 112
    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 116
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {p1}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-static {p1}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    .line 118
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    .line 119
    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 120
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    .line 121
    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$100(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 124
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$300(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$400(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$500(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->getShortDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->getOldSamples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->formatSkillCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    iget-object v4, v4, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->getOldSamples()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->formatSkillCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v3, v0

    .line 133
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 136
    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-static {v4}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$600(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$600(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 139
    :cond_1
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$600(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 142
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$700(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$700(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$700(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :goto_3
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$800(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-array v1, p1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->getComment()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v4, "count"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "(%s \u4eba\u5df2\u8bc4\u4ef7)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$900(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->getComment()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "avgScore"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->getComment()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->access$1000(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;I)V

    .line 152
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 153
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->finishLoadingView()V

    :cond_3
    :goto_4
    return-void
.end method
