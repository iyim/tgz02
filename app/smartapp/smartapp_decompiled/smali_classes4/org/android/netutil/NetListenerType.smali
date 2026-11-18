.class public final enum Lorg/android/netutil/NetListenerType;
.super Ljava/lang/Enum;
.source "NetListenerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/android/netutil/NetListenerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/android/netutil/NetListenerType;

.field public static final enum NL_INTERFACE_ON_OFF:Lorg/android/netutil/NetListenerType;

.field public static final enum NL_NEW_IP_ADDRESS:Lorg/android/netutil/NetListenerType;

.field public static final enum NL_NULL:Lorg/android/netutil/NetListenerType;


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lorg/android/netutil/NetListenerType;

    const/4 v1, 0x0

    const-string v2, "NL_NULL"

    const-wide/16 v3, -0x1

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/android/netutil/NetListenerType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/android/netutil/NetListenerType;->NL_NULL:Lorg/android/netutil/NetListenerType;

    .line 5
    new-instance v0, Lorg/android/netutil/NetListenerType;

    const/4 v2, 0x1

    const-string v3, "NL_NEW_IP_ADDRESS"

    const-wide/16 v4, 0x0

    invoke-direct {v0, v3, v2, v4, v5}, Lorg/android/netutil/NetListenerType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/android/netutil/NetListenerType;->NL_NEW_IP_ADDRESS:Lorg/android/netutil/NetListenerType;

    .line 6
    new-instance v0, Lorg/android/netutil/NetListenerType;

    const/4 v3, 0x2

    const-string v4, "NL_INTERFACE_ON_OFF"

    const-wide/16 v5, 0x1

    invoke-direct {v0, v4, v3, v5, v6}, Lorg/android/netutil/NetListenerType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/android/netutil/NetListenerType;->NL_INTERFACE_ON_OFF:Lorg/android/netutil/NetListenerType;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lorg/android/netutil/NetListenerType;

    sget-object v4, Lorg/android/netutil/NetListenerType;->NL_NULL:Lorg/android/netutil/NetListenerType;

    aput-object v4, v0, v1

    sget-object v1, Lorg/android/netutil/NetListenerType;->NL_NEW_IP_ADDRESS:Lorg/android/netutil/NetListenerType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/android/netutil/NetListenerType;->NL_INTERFACE_ON_OFF:Lorg/android/netutil/NetListenerType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/android/netutil/NetListenerType;->$VALUES:[Lorg/android/netutil/NetListenerType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-wide p3, p0, Lorg/android/netutil/NetListenerType;->value:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/netutil/NetListenerType;
    .locals 1

    .line 3
    const-class v0, Lorg/android/netutil/NetListenerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/android/netutil/NetListenerType;

    return-object p0
.end method

.method public static values()[Lorg/android/netutil/NetListenerType;
    .locals 1

    .line 3
    sget-object v0, Lorg/android/netutil/NetListenerType;->$VALUES:[Lorg/android/netutil/NetListenerType;

    invoke-virtual {v0}, [Lorg/android/netutil/NetListenerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/netutil/NetListenerType;

    return-object v0
.end method


# virtual methods
.method getValue()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lorg/android/netutil/NetListenerType;->value:J

    return-wide v0
.end method
