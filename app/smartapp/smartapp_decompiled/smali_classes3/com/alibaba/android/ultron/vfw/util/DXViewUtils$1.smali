.class final Lcom/alibaba/android/ultron/vfw/util/DXViewUtils$1;
.super Ljava/lang/Object;
.source "DXViewUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/util/DXViewUtils;->addDialogWatermark(Landroid/view/View;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$copyUrl:Ljava/lang/String;

.field final synthetic val$source:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils$1;->val$source:Landroid/view/View;

    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils$1;->val$copyUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils$1;->val$source:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 132
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils$1;->val$copyUrl:Ljava/lang/String;

    const-string v0, "url"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 133
    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 135
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils$1;->val$source:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "URL\u5df2\u590d\u5236\u6210\u529f\uff01"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
