.class public final Lcom/alibaba/ailabs/genie/musicplayer/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.alibaba.ailabs.genie.musicplayer"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final VERSION_CODE:I = 0x7d2d10a2

.field public static final VERSION_NAME:Ljava/lang/String; = "1.0.53.78"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "true"

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/ailabs/genie/musicplayer/BuildConfig;->DEBUG:Z

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
