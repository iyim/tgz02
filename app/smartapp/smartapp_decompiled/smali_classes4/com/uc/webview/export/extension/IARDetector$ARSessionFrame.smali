.class public Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/extension/IARDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ARSessionFrame"
.end annotation


# instance fields
.field public data:[B

.field public format:I

.field public frameId:I

.field public height:I

.field public imageRotation:I

.field public rotation:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
