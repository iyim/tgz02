.class public Lcom/taobao/android/sku/dinamicx/widget/RichTextView$UrlSpan;
.super Landroid/text/style/ClickableSpan;
.source "RichTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/sku/dinamicx/widget/RichTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlSpan"
.end annotation


# instance fields
.field private mRichColor:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 414
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 415
    iput-object p1, p0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$UrlSpan;->mUrl:Ljava/lang/String;

    .line 416
    iput p2, p0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$UrlSpan;->mRichColor:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 429
    :try_start_0
    invoke-static {}, Lcom/taobao/android/AliNavServiceFetcher;->getNavService()Lcom/taobao/android/AliNavServiceInterface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/taobao/android/AliNavServiceInterface;->from(Landroid/content/Context;)Lcom/taobao/android/AliNavInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$UrlSpan;->mUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/taobao/android/AliNavInterface;->toUri(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 431
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/android/sku/utils/SkuLogUtils;->loge(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 422
    iget v0, p0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$UrlSpan;->mRichColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
