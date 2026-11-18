.class Lcom/taobao/android/preview/DXPreviewInterfaceImpl$1;
.super Lcom/taobao/android/dinamicx/DXAbsEventHandler;
.source "DXPreviewInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/preview/DXPreviewInterfaceImpl;->previewEngineDidInitialized(Lcom/taobao/android/dinamicx/DinamicXEngineRouter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/preview/DXPreviewInterfaceImpl;

.field final synthetic val$engine:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;


# direct methods
.method constructor <init>(Lcom/taobao/android/preview/DXPreviewInterfaceImpl;Lcom/taobao/android/dinamicx/DinamicXEngineRouter;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/taobao/android/preview/DXPreviewInterfaceImpl$1;->this$0:Lcom/taobao/android/preview/DXPreviewInterfaceImpl;

    iput-object p2, p0, Lcom/taobao/android/preview/DXPreviewInterfaceImpl$1;->val$engine:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-direct {p0}, Lcom/taobao/android/dinamicx/DXAbsEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;[Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    .locals 1

    .line 29
    instance-of p3, p1, Lcom/taobao/android/dinamicx/expression/event/DXCheckBoxEvent;

    if-eqz p3, :cond_0

    .line 30
    nop

    nop

    .line 31
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checked="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXCheckBoxEvent;->isChecked()Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "lx"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    :cond_1
    iget-object p2, p0, Lcom/taobao/android/preview/DXPreviewInterfaceImpl$1;->val$engine:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6536\u5230\u70b9\u51fb \u53c2\u6570\u4e3a: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
