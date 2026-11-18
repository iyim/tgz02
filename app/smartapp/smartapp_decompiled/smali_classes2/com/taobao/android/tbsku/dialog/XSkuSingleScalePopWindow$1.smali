.class Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$1;
.super Ljava/lang/Object;
.source "XSkuSingleScalePopWindow.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->initPropChangeEvent(Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;

.field final synthetic val$feedback:Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;

.field final synthetic val$imageList:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method constructor <init>(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$1;->this$0:Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;

    iput-object p2, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$1;->val$imageList:Lcom/alibaba/fastjson/JSONArray;

    iput-object p3, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$1;->val$feedback:Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$1;->this$0:Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;

    invoke-static {v0}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->access$000(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$1;->this$0:Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;

    iget-object v1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$1;->val$imageList:Lcom/alibaba/fastjson/JSONArray;

    iget-object v2, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$1;->val$feedback:Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;

    invoke-static {v0, p1, v1, v2}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->access$100(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;ILcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V

    return-void
.end method
