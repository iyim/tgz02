.class public final Lcom/alibaba/ailabs/genie/second/utils/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field private static final DEBUG_INDEX:I = 0x0

.field private static final INVALID_INDEX:I = -0x1

.field private static final RS_INDEX:I = 0x1

.field private static SYSTEM_VERSION_INDEX:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isRSSystem()Z
    .locals 4

    .line 25
    sget v0, Lcom/alibaba/ailabs/genie/second/utils/SystemUtils;->SYSTEM_VERSION_INDEX:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 30
    :cond_1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 32
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "-"

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    array-length v3, v0

    if-le v3, v2, :cond_2

    const-string v3, "RS"

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 41
    sput v2, Lcom/alibaba/ailabs/genie/second/utils/SystemUtils;->SYSTEM_VERSION_INDEX:I

    goto :goto_1

    .line 43
    :cond_3
    sput v1, Lcom/alibaba/ailabs/genie/second/utils/SystemUtils;->SYSTEM_VERSION_INDEX:I

    :goto_1
    return v0
.end method
