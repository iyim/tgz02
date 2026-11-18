.class public abstract Lcom/uc/webview/export/WebResourceError;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public abstract getDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getErrorCode()I
.end method
