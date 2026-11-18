.class public final Lcom/alibaba/genie/market/task/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.alibaba.genie.market.task"

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final IS_ONLINE:Z = false

.field public static final VERSION_CODE:I = 0xf42a5

.field public static final VERSION_NAME:Ljava/lang/String; = "1.0.1.1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "true"

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/genie/market/task/BuildConfig;->DEBUG:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
