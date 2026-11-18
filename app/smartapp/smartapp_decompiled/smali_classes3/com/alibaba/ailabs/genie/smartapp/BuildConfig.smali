.class public final Lcom/alibaba/ailabs/genie/smartapp/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final AMPE_PKG:Ljava/lang/String; = "com.alipay.arome.app"

.field public static final APPLICATION_ID:Ljava/lang/String; = "com.alibaba.ailabs.genie.smartapp"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final IS_DEBUG:Z = false

.field public static final NAME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_CODE:I = 0x7d4b4dce

.field public static final VERSION_NAME:Ljava/lang/String; = "8.7.1.18"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/BuildConfig$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/smartapp/BuildConfig$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/smartapp/BuildConfig;->NAME_MAP:Ljava/util/Map;

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
