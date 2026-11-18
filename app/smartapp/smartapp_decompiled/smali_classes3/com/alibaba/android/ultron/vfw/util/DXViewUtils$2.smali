.class final Lcom/alibaba/android/ultron/vfw/util/DXViewUtils$2;
.super Ljava/lang/Object;
.source "DXViewUtils.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/util/DXViewUtils;->addDialogWatermark(Landroid/view/View;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
