.class public Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;
.super Ljava/lang/Object;
.source "ResourceProvider.java"

# interfaces
.implements Lcom/alipay/android/app/smartpays/api/IResourceProvider;


# static fields
.field public static PACKAGE_NAME:Ljava/lang/String; = "com.alipay.android.phone.safepaybase"

.field public static SDK_PACKAGE_NAME:Ljava/lang/String; = "com.alipay.android.safepaysdk"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-static {}, Lcom/alipay/android/app/render/api/RenderEnv;->isWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;->PACKAGE_NAME:Ljava/lang/String;

    return-object v0

    .line 36
    :cond_0
    sget-object v0, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;->SDK_PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
