.class public final Lcom/alibaba/ailabs/genie/second/gcs/GCSConst;
.super Ljava/lang/Object;
.source "GCSConst.java"


# static fields
.field public static final BUNDLE_KEY_MTOP_RESPONSE:Ljava/lang/String; = "bundle_key_mtop_response"

.field private static final GCS_DOMAIN_SUFFIX:Ljava/lang/String; = ".ipc.second.server"

.field public static final KEY_BUNDLE_MTOP_METHOD:Ljava/lang/String; = "KEY_BUNDLE_MTOP_METHOD"

.field public static final METHOD_CALLBACK_FAIL:I = 0x1

.field public static final METHOD_CALLBACK_SUCCESS:I = 0x0

.field public static final METHOD_SEND:I = 0x0

.field public static final MTOP_SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.gcs.mtop"

.field private static final TAG:Ljava/lang/String; = "GCSConst"

.field public static final UT_SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.gcs.ut"

.field private static mGcsDomain:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/second/gcs/GCSConst;->mGcsDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".ipc.second.server"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/ailabs/genie/second/gcs/GCSConst;->mGcsDomain:Ljava/lang/String;

    .line 38
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/genie/second/gcs/GCSConst;->mGcsDomain:Ljava/lang/String;

    return-object p0
.end method
