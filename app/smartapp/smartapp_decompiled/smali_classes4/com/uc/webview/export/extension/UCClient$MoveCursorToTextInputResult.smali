.class public Lcom/uc/webview/export/extension/UCClient$MoveCursorToTextInputResult;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/extension/UCClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveCursorToTextInputResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public mCanMoveToNext:Z

.field public mCanMoveToPrevious:Z

.field public mSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
