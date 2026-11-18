.class public Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;
.super Landroid/support/v4/app/FragmentActivity;
.source "MessageActivityP0.java"


# static fields
.field public static final KEY_IMG_URL:Ljava/lang/String; = "url"

.field public static final KEY_JUMP_URI:Ljava/lang/String; = "uri"

.field public static final KEY_PAYLOAD:Ljava/lang/String; = "payload"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field public static final KEY_TIME_UNIT:Ljava/lang/String; = "unit"

.field private static final PAGE_NAME:Ljava/lang/String; = "message"

.field private static final TAG:Ljava/lang/String; = "MessageActivityP0"


# instance fields
.field private jumpUri:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private runnable:Ljava/lang/Runnable;

.field private time:I

.field private timeVal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->map:Ljava/util/Map;

    .line 138
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$3;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->map:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->jumpUri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->time:I

    return p0
.end method

.method static synthetic access$210(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)I
    .locals 2

    .line 43
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->time:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->time:I

    return v0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->timeVal:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getShowTime(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SECONDS"

    .line 153
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_3

    const/16 p2, 0x3c

    if-gt p1, p2, :cond_3

    .line 155
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string p1, "MINUTES"

    .line 157
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "HOURS"

    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "DAY"

    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method private init()V
    .locals 4

    .line 236
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;

    const/high16 v2, 0x41800000    # 16.0f

    .line 237
    invoke-static {p0, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 238
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method private loadPic(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$4;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 214
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$5;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$5;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget p1, Lcom/alibaba/ailabs/genie/message/R$layout;->activity_message_p0:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->setContentView(I)V

    .line 76
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->init()V

    .line 77
    sget p1, Lcom/alibaba/ailabs/genie/message/R$id;->closeTvId:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->timeTvVal:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->timeVal:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->bigIv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->textTv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 82
    new-instance v2, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance p1, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$2;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    const-string v3, "time"

    .line 108
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->time:I

    const-string v2, "unit"

    .line 109
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    iget v3, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->time:I

    invoke-direct {p0, v3, v2}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->getShowTime(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    .line 111
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->map:Ljava/util/Map;

    const-string v5, "payload"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "message_info"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->map:Ljava/util/Map;

    const-string v5, "message"

    const-string v6, "a1z3lt.b25434202"

    invoke-static {v5, v6, v4}, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->pageUT(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 117
    invoke-direct {p0, v3, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->loadPic(Ljava/lang/String;Landroid/widget/ImageView;)V

    const-string v0, "uri"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->jumpUri:Ljava/lang/String;

    .line 119
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->timeVal:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->timeVal:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->runnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 193
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    const-string v0, "MessageActivityP0"

    const-string v1, "onDestroy"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 169
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 170
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/task/TaskSvr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getCurrentScene()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessageActivityP0"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "screen_saver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "power"

    .line 175
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isScreenOn:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->finish()V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->finish()V

    .line 135
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
