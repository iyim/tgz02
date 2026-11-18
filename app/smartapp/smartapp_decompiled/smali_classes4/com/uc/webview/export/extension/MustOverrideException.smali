.class public Lcom/uc/webview/export/extension/MustOverrideException;
.super Ljava/lang/RuntimeException;
.source "U4Source"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "abstract function called: must be overriden!"

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
