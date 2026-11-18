.class public Lcom/taobao/android/sku/dinamicx/widget/RichTextView;
.super Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;
.source "RichTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Builder;,
        Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;,
        Lcom/taobao/android/sku/dinamicx/widget/RichTextView$UrlSpan;
    }
.end annotation


# static fields
.field public static final DX_WIDGET_ID:J

.field private static final EVENT:Ljava/lang/String; = "event"

.field private static final E_OPEN_URL:Ljava/lang/String; = "openUrl"

.field private static final NAME:Ljava/lang/String; = "skuRichTextView"

.field private static final PROP_HTML_TEXT:Ljava/lang/String; = "htmlText"

.field private static final PROP_RICH_TEXT:Ljava/lang/String; = "richText"

.field private static final STYLE:Ljava/lang/String; = "style"

.field private static final S_BOLD:Ljava/lang/String; = "bold"

.field private static final S_COLOR:Ljava/lang/String; = "color"

.field private static final S_ITALIC:Ljava/lang/String; = "italic"

.field private static final S_SIZE:Ljava/lang/String; = "size"

.field private static final S_STRIKE_THROUGH:Ljava/lang/String; = "strikeThrough"

.field private static final TAG_PROP_HTML_TEXT:J

.field private static final TAG_PROP_RICH_TEXT:J

.field private static final TAG_TV_TEXT_COLOR:J

.field private static final TEXT:Ljava/lang/String; = "text"

.field private static final TV_TEXT_COLOR:Ljava/lang/String; = "textColor"


# instance fields
.field private mRichText:Lcom/alibaba/fastjson/JSONArray;

.field private mTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "skuRichTextView"

    .line 66
    invoke-static {v0}, Lcom/taobao/android/dinamicx/template/utils/DXHashUtil;->hash(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->DX_WIDGET_ID:J

    const-string v0, "textColor"

    .line 69
    invoke-static {v0}, Lcom/taobao/android/dinamicx/template/utils/DXHashUtil;->hash(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->TAG_TV_TEXT_COLOR:J

    const-string v0, "richText"

    .line 72
    invoke-static {v0}, Lcom/taobao/android/dinamicx/template/utils/DXHashUtil;->hash(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->TAG_PROP_RICH_TEXT:J

    const-string v0, "htmlText"

    .line 75
    invoke-static {v0}, Lcom/taobao/android/dinamicx/template/utils/DXHashUtil;->hash(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->TAG_PROP_HTML_TEXT:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;-><init>()V

    .line 89
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->mRichText:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method private getBoldSpan(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "bold"

    .line 255
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 258
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object p1

    :cond_1
    return-object v0
.end method

.method private getColorSpan(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "color"

    .line 224
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x123456

    .line 225
    invoke-direct {p0, p1, v1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->parseColor(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1

    return-object v0

    .line 230
    :cond_1
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object v0
.end method

.method private getEventObj(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    const-string v0, "event"

    .line 297
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private getEventSpan(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;)Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 356
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->getEventObj(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 357
    new-instance v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;

    invoke-direct {v1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;-><init>()V

    .line 358
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    iput p2, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->start:I

    .line 359
    iget p2, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->start:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->end:I

    .line 361
    invoke-direct {p0, p4}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->getRichTextColor(Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;)Landroid/text/style/ForegroundColorSpan;

    move-result-object p2

    .line 362
    iget p3, p0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->mTextColor:I

    if-eqz p2, :cond_1

    .line 364
    invoke-virtual {p2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result p3

    .line 366
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->getOpenUrlSpan(Lcom/alibaba/fastjson/JSONObject;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 368
    iget-object p2, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->spans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_2
    iget-object p1, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->spans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method private getItalicSpan(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "italic"

    .line 270
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 273
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object p1

    :cond_1
    return-object v0
.end method

.method private getOpenUrlSpan(Lcom/alibaba/fastjson/JSONObject;I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "openUrl"

    .line 305
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 307
    new-instance v0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$UrlSpan;

    invoke-direct {v0, p1, p2}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$UrlSpan;-><init>(Ljava/lang/String;I)V

    :cond_1
    return-object v0
.end method

.method private getRichArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 145
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 147
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/android/sku/utils/SkuLogUtils;->loge(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private getRichText(Lcom/alibaba/fastjson/JSONArray;)Landroid/text/SpannableString;
    .locals 7

    const-string v0, ""

    if-eqz p1, :cond_7

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 178
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_4

    .line 179
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "text"

    .line 183
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 187
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-direct {p0, v4, v0, v5}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->getStyleSpan(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 191
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_2
    invoke-direct {p0, v4, v0, v5, v6}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->getEventSpan(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;)Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 195
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 200
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;

    .line 202
    iget-object v2, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->spans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 203
    iget v4, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->start:I

    iget v5, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->end:I

    iget v6, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->flags:I

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_6
    return-object p1

    .line 212
    :cond_7
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private getRichTextColor(Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;)Landroid/text/style/ForegroundColorSpan;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 398
    iget-object v1, p1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->spans:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->spans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    iget-object p1, p1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->spans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 402
    instance-of v2, v1, Landroid/text/style/ForegroundColorSpan;

    if-eqz v2, :cond_1

    .line 403
    nop

    nop

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getSizeSpan(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "size"

    .line 239
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 242
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    :catch_0
    return-object v0
.end method

.method private getStrikeThroughSpan(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "strikeThrough"

    .line 285
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 288
    new-instance p1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    return-object p1

    :cond_1
    return-object v0
.end method

.method private getStyleObj(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    const-string v0, "style"

    .line 216
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private getStyleSpan(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 319
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->getStyleObj(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 320
    new-instance v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;

    invoke-direct {v1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;-><init>()V

    .line 321
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    iput p2, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->start:I

    .line 322
    iget p2, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->start:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->end:I

    .line 324
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->getSizeSpan(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 326
    iget-object p3, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->spans:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->getColorSpan(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 330
    iget-object p3, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->spans:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_2
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->getBoldSpan(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 334
    iget-object p3, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->spans:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_3
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->getItalicSpan(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 338
    iget-object p3, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->spans:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_4
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->getStrikeThroughSpan(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 342
    iget-object p2, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->spans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_5
    iget-object p1, v1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->spans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    return-object v1

    :cond_6
    return-object v0
.end method

.method private parseColor(Ljava/lang/String;I)I
    .locals 4

    if-eqz p1, :cond_6

    .line 379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_4

    .line 384
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 385
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x66

    if-gt v2, v3, :cond_3

    .line 387
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_5

    return p2

    .line 394
    :cond_5
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_6
    :goto_1
    return p2
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 94
    new-instance p1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;

    invoke-direct {p1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;-><init>()V

    return-object p1
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 100
    instance-of p2, p1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;

    if-nez p2, :cond_0

    return-void

    .line 103
    :cond_0
    nop

    nop

    .line 105
    iget p2, p1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->mTextColor:I

    iput p2, p0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->mTextColor:I

    .line 106
    iget-object p1, p1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->mRichText:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    iput-object p1, p0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->mRichText:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 166
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->onCreateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 167
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 168
    move-object v0, p1

    nop

    nop

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-object p1
.end method

.method public onSetIntAttribute(JI)V
    .locals 3

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->onSetIntAttribute(JI)V

    .line 112
    sget-wide v0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->TAG_TV_TEXT_COLOR:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 113
    iput p3, p0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->mTextColor:I

    :cond_0
    return-void
.end method

.method protected onSetObjAttribute(JLjava/lang/Object;)V
    .locals 3

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->onSetObjAttribute(JLjava/lang/Object;)V

    .line 134
    sget-wide v0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->TAG_PROP_RICH_TEXT:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 135
    instance-of p1, p3, Lcom/alibaba/fastjson/JSONArray;

    if-eqz p1, :cond_0

    .line 136
    nop

    nop

    iput-object p3, p0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->mRichText:Lcom/alibaba/fastjson/JSONArray;

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->getRichArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->mRichText:Lcom/alibaba/fastjson/JSONArray;

    .line 140
    :goto_0
    iget-object p1, p0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->mRichText:Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p0, p1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->getRichText(Lcom/alibaba/fastjson/JSONArray;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onSetStringAttribute(JLjava/lang/String;)V
    .locals 3

    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->onSetStringAttribute(JLjava/lang/String;)V

    .line 120
    sget-wide v0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->TAG_PROP_HTML_TEXT:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 123
    :try_start_0
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 125
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/android/sku/utils/SkuLogUtils;->loge(Ljava/lang/String;)V

    .line 127
    :goto_0
    invoke-virtual {p0, p1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
