.class public Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;
.super Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter<",
        "Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;",
        ">;"
    }
.end annotation


# static fields
.field private static final HTTP:Ljava/lang/String; = "http"

.field private static final HTTPS:Ljava/lang/String; = "https"


# instance fields
.field private context:Landroid/content/Context;

.field private notificationBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->context:Landroid/content/Context;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->notificationBeanList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method private setTextTouch(Landroid/widget/TextView;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 220
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$6;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$6;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private spannerStyle(Landroid/widget/TextView;Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;)V
    .locals 4

    .line 177
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 178
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpannerStyle"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    const/16 v1, 0x1e

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const-string v3, "..."

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->getActionUrl()Ljava/lang/String;

    move-result-object p2

    .line 185
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https"

    .line 186
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$5;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$5;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "  \u67e5\u770b\u8be6\u60c5"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 190
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 191
    new-instance v2, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$4;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$4;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v3, 0x21

    .line 191
    invoke-virtual {v1, v2, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 197
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->setTextTouch(Landroid/widget/TextView;)V

    goto :goto_1

    .line 209
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public bind(Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;I)V
    .locals 8

    .line 66
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->item_message:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 67
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->item_left_icon:I

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 68
    sget v2, Lcom/alibaba/ailabs/genie/message/R$id;->item_template:I

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    sget v3, Lcom/alibaba/ailabs/genie/message/R$id;->item_time:I

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 70
    sget v4, Lcom/alibaba/ailabs/genie/message/R$id;->message_history_image:I

    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 71
    sget v5, Lcom/alibaba/ailabs/genie/message/R$id;->message_content:I

    invoke-virtual {p1, v5}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 74
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->notificationBeanList:Ljava/util/List;

    if-eqz v5, :cond_5

    .line 75
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "notificationBeanList"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->notificationBeanList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;

    .line 77
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->getSubscribeMetaInfo()Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 79
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;->getIcon()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 81
    new-instance v6, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v6}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v7, Lcom/alibaba/ailabs/genie/message/R$mipmap;->default_message_detail_icon:I

    .line 83
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v6

    sget v7, Lcom/alibaba/ailabs/genie/message/R$mipmap;->default_message_detail_icon:I

    .line 85
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v6

    .line 87
    iget-object v7, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    new-instance v6, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$1;

    invoke-direct {v6, p0, v1, v1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 99
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->getGmtCreate()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->context:Landroid/content/Context;

    invoke-static {v1, v2, v5}, Lcom/alibaba/ailabs/genie/message/utils/MessageCenterDateUtils;->getTimeShowString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->spannerStyle(Landroid/widget/TextView;Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;)V

    .line 115
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v2, Lcom/alibaba/ailabs/genie/message/R$mipmap;->default_message_detail_icon:I

    .line 120
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/message/R$mipmap;->default_message_detail_icon:I

    .line 122
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v1, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$2;

    invoke-direct {v1, p0, v4, v4}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$2;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    :cond_4
    const/16 p1, 0x8

    .line 133
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->getActionUrl()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 138
    new-instance p2, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$3;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$3;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public clearData()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->notificationBeanList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->notificationBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLayout()I
    .locals 1

    .line 60
    sget v0, Lcom/alibaba/ailabs/genie/message/R$layout;->fragment_item_message:I

    return v0
.end method

.method public setData(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 155
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->notificationBeanList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 157
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "MessageListAdapter"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->notificationBeanList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
