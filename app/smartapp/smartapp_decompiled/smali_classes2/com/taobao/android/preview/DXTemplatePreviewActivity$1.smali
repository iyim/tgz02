.class Lcom/taobao/android/preview/DXTemplatePreviewActivity$1;
.super Ljava/lang/Object;
.source "DXTemplatePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/preview/DXTemplatePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/preview/DXTemplatePreviewActivity;


# direct methods
.method constructor <init>(Lcom/taobao/android/preview/DXTemplatePreviewActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity$1;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity$1;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewActivity;

    invoke-virtual {p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->finish()V

    .line 65
    iget-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity$1;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->overridePendingTransition(II)V

    return-void
.end method
