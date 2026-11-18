.class Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter$1;
.super Ljava/lang/Object;
.source "XSkuSingleScalePopWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;


# direct methods
.method constructor <init>(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter$1;->this$0:Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 219
    :try_start_0
    iget-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter$1;->this$0:Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;

    invoke-static {p1}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;->access$200(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter$1;->this$0:Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;

    invoke-static {p1}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;->access$200(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
