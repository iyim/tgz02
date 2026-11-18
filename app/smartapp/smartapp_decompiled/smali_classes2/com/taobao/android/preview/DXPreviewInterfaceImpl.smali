.class public Lcom/taobao/android/preview/DXPreviewInterfaceImpl;
.super Ljava/lang/Object;
.source "DXPreviewInterfaceImpl.java"

# interfaces
.implements Lcom/taobao/android/preview/DXTemplatePreviewActivity$DXPreviewInterface;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public previewEngineDidInitialized(Lcom/taobao/android/dinamicx/DinamicXEngineRouter;)V
    .locals 3

    const-string v0, "shandian"

    const-string v1, "\u53cd\u5c04\u8c03\u7528previewEngineDidInitialized"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "test"

    .line 26
    invoke-static {v0}, Lcom/taobao/android/dinamicx/template/utils/DXHashUtil;->hash(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Lcom/taobao/android/preview/DXPreviewInterfaceImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/taobao/android/preview/DXPreviewInterfaceImpl$1;-><init>(Lcom/taobao/android/preview/DXPreviewInterfaceImpl;Lcom/taobao/android/dinamicx/DinamicXEngineRouter;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->registerEventHandler(JLcom/taobao/android/dinamicx/IDXEventHandler;)Z

    return-void
.end method
