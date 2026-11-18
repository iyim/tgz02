.class public Lcom/alibaba/ailabs/genie/client/GenieUiConstant$GenieBarStatus;
.super Ljava/lang/Object;
.source "GenieUiConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/client/GenieUiConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenieBarStatus"
.end annotation


# static fields
.field public static final ASR:I = 0x4

.field public static final ASR_AND_TTS:I = 0x6

.field public static final DEFAULT:I = 0x1

.field public static final DEFAULT_OUT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MUTE:I = 0x8

.field public static final PROMPT_MESSAGE:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RECONIZED:I = 0x3

.field public static final SESSION_END:I = 0x7

.field public static final TTS:I = 0x5

.field public static final VISION_CONTINUE:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
