.class Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "XSkuSingleScalePopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mImage:Lcom/alibaba/fastjson/JSONObject;

.field private mImageList:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;->mDialog:Landroid/app/Dialog;

    .line 192
    iput-object p2, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;->mImage:Lcom/alibaba/fastjson/JSONObject;

    .line 193
    iput-object p3, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;->mImageList:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;)Landroid/app/Dialog;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private initImage(Landroid/content/Context;Lcom/taobao/android/tbsku/image/PhotoView;Ljava/lang/String;)V
    .locals 1

    .line 245
    :try_start_0
    invoke-static {}, Lcom/taobao/android/AliImageServiceFetcher;->getImageService()Lcom/taobao/android/AliImageServiceInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/android/AliImageServiceInterface;->getAliImageInterface(Landroid/content/Context;)Lcom/taobao/android/AliImageInterface;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/taobao/android/AliImageInterface;->load(Ljava/lang/String;)Lcom/taobao/android/AliImageCreatorInterface;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/taobao/android/AliImageCreatorInterface;->into(Landroid/widget/ImageView;)Lcom/taobao/android/AliImageTicketInterface;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/android/sku/utils/SkuLogUtils;->loge(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setImageDesc(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 253
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 254
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 257
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 263
    instance-of p2, p3, Landroid/view/View;

    if-eqz p2, :cond_0

    .line 264
    nop

    nop

    .line 265
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;->mImageList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 211
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/taobao/android/tbsku/R$layout;->xsku_scaleimage:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 212
    sget v1, Lcom/taobao/android/tbsku/R$id;->txview_popupwindow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 213
    sget v2, Lcom/taobao/android/tbsku/R$id;->imageviewtouch:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/tbsku/image/PhotoView;

    .line 215
    new-instance v3, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter$1;

    invoke-direct {v3, p0}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter$1;-><init>(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;)V

    invoke-virtual {v2, v3}, Lcom/taobao/android/tbsku/image/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v3, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;->mImageList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    const-string v3, "desc"

    .line 228
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;->mImage:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_0

    const-string v3, "title"

    .line 230
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v4, "url"

    .line 232
    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 233
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;->mImage:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_1

    const-string p2, "icon"

    .line 234
    invoke-virtual {v4, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 236
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v1, v3}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;->setImageDesc(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;->initImage(Landroid/content/Context;Lcom/taobao/android/tbsku/image/PhotoView;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
