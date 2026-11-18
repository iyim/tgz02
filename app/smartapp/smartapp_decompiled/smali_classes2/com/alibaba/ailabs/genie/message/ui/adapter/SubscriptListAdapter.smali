.class public Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;
.super Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;
.source "SubscriptListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter<",
        "Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static ALREADY_SUBSCRIPT:Ljava/lang/String; = "\u5df2\u8ba2\u9605"

.field private static CANCEL_SUBSCRIPT:Ljava/lang/String; = "  \u53d6\u6d88\u8ba2\u9605"

.field private static SUBSCRIPT:Ljava/lang/String; = "\u8ba2\u9605"

.field private static TAG:Ljava/lang/String; = "SubscriptListAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private mSelectorDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

.field private mSubDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

.field private subscribeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private subscriptNetWorkListener:Lcom/alibaba/ailabs/genie/message/ui/adapter/ISubscriptNetWorkListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->subscribeInfoList:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->mSelectorDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->mSelectorDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->CANCEL_SUBSCRIPT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;ILcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->subDialog(ILcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->SUBSCRIPT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Lcom/alibaba/ailabs/genie/message/ui/adapter/ISubscriptNetWorkListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->subscriptNetWorkListener:Lcom/alibaba/ailabs/genie/message/ui/adapter/ISubscriptNetWorkListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->subscribeInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->mSubDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    return-object p0
.end method

.method static synthetic access$702(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->mSubDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    return-object p1
.end method

.method private clearData()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->subscribeInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 250
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private gotoAction(Ljava/lang/String;)V
    .locals 2

    const-string v0, "http"

    .line 295
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genie://com.alibaba.ailabs.genie.launcher/webviewPage?h5_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 302
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 303
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 309
    :goto_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->setInformJump(Ljava/lang/String;)V

    return-void
.end method

.method private setInformJump(Ljava/lang/String;)V
    .locals 4

    .line 266
    new-instance v0, Lcom/alibaba/ailabs/genie/message/network/bean/DestUrlBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/message/network/bean/DestUrlBean;-><init>()V

    const-string v1, "pkg"

    .line 267
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/bean/DestUrlBean;->setPkg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "appid"

    .line 270
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.alibaba.ailabs.genie.webapps"

    .line 272
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/bean/DestUrlBean;->setPkg(Ljava/lang/String;)V

    .line 274
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/message/network/bean/DestUrlBean;->setUri(Ljava/lang/String;)V

    .line 282
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "message_center_dest"

    .line 284
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "message_center"

    invoke-static {v0, v3, p1, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->informJump(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private subDialog(ILcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
    .locals 9

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->mSubDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d6\u6d88 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u7684\u6d88\u606f\u8ba2\u9605"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$6;

    invoke-direct {v5, p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$6;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;ILcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V

    new-instance v6, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$7;

    invoke-direct {v6, p0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$7;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)V

    const-string v4, "\u53d6\u6d88\u8ba2\u9605\u540e\uff0c\u5c06\u4e0d\u518d\u6536\u5230\u5929\u732b\u7cbe\u7075\u8bbe\u5907\u548c APP \u7684\u670d\u52a1\u63d0\u9192\u6d88\u606f\u7f57"

    const-string v7, "\u53d6\u6d88\u8ba2\u9605"

    const-string v8, "\u6682\u4e0d\u53d6\u6d88"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->mSubDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->mSubDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->setCanceledOnTouchOutside(Z)V

    .line 234
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->mSubDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->show()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;I)V
    .locals 8

    .line 64
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->subed_linear:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 65
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->item_sub:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 66
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->item_sub_left_icon:I

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 67
    sget v2, Lcom/alibaba/ailabs/genie/message/R$id;->item_sub_template:I

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 68
    sget v3, Lcom/alibaba/ailabs/genie/message/R$id;->item_sub_setting:I

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 69
    sget v3, Lcom/alibaba/ailabs/genie/message/R$id;->item_sub_has:I

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 70
    sget v3, Lcom/alibaba/ailabs/genie/message/R$id;->item_sub_content:I

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    sget v4, Lcom/alibaba/ailabs/genie/message/R$id;->sub_btn:I

    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 72
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alibaba/ailabs/genie/message/R$drawable;->sub_btn_bg:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alibaba/ailabs/genie/message/R$color;->sub_btn:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->subscribeInfoList:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 77
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    .line 78
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 79
    new-instance v5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v5}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v6, Lcom/alibaba/ailabs/genie/message/R$mipmap;->default_message_detail_icon:I

    .line 81
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v5

    sget v6, Lcom/alibaba/ailabs/genie/message/R$mipmap;->default_message_detail_icon:I

    .line 83
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v5

    .line 85
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getIcon()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    new-instance v6, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$1;

    invoke-direct {v6, p0, v1, v1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 95
    :cond_0
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_1
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getStatus()Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-nez v1, :cond_3

    .line 103
    sget-object v1, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->ALREADY_SUBSCRIPT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/message/R$drawable;->has_sub_btn_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/message/R$color;->has_sub_btn:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    new-instance v1, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;

    invoke-direct {v1, p0, v4, p2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3;

    invoke-direct {v0, p0, v4, p2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getStatus()Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    .line 164
    sget-object p2, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->SUBSCRIPT:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/message/R$drawable;->sub_btn_bg:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/message/R$color;->sub_btn:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    new-instance p2, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4;

    invoke-direct {p2, p0, v4}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    new-instance p2, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$5;

    invoke-direct {p2, p0, v4}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$5;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->subscribeInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLayout()I
    .locals 1

    .line 58
    sget v0, Lcom/alibaba/ailabs/genie/message/R$layout;->fragment_item_sub:I

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;",
            ">;)V"
        }
    .end annotation

    .line 238
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->clearData()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->subscribeInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->notifyDataSetChanged()V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubscriptListAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setISubscriptNetWorkListener(Lcom/alibaba/ailabs/genie/message/ui/adapter/ISubscriptNetWorkListener;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->subscriptNetWorkListener:Lcom/alibaba/ailabs/genie/message/ui/adapter/ISubscriptNetWorkListener;

    return-void
.end method
