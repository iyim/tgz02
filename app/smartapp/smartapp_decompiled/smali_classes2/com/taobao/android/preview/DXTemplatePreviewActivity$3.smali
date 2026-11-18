.class Lcom/taobao/android/preview/DXTemplatePreviewActivity$3;
.super Ljava/lang/Object;
.source "DXTemplatePreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/preview/DXTemplatePreviewActivity;->showErrorDialog()V
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

    .line 139
    iput-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity$3;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 142
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 143
    iget-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity$3;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewActivity;

    invoke-virtual {p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->finish()V

    return-void
.end method
