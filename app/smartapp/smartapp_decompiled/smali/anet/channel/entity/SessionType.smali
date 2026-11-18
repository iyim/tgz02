.class public final Lanet/channel/entity/SessionType;
.super Ljava/lang/Object;
.source "SessionType.java"


# static fields
.field public static ALL:I = 0x0

.field public static LONG_LINK:I = 0x1

.field public static SHORT_LINK:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    sget v0, Lanet/channel/entity/SessionType;->LONG_LINK:I

    sget v1, Lanet/channel/entity/SessionType;->SHORT_LINK:I

    or-int/2addr v0, v1

    sput v0, Lanet/channel/entity/SessionType;->ALL:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
