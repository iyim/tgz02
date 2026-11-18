.class public abstract Lcom/uc/webview/export/WebMessagePort;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/WebMessagePort$WebMessageCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract postMessage(Lcom/uc/webview/export/WebMessage;)V
.end method

.method public abstract setWebMessageCallback(Lcom/uc/webview/export/WebMessagePort$WebMessageCallback;)V
.end method

.method public abstract setWebMessageCallback(Lcom/uc/webview/export/WebMessagePort$WebMessageCallback;Landroid/os/Handler;)V
.end method
