.class public Lcom/alibaba/ailabs/tg/UtilsConfig;
.super Ljava/lang/Object;
.source "UtilsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/tg/UtilsConfig$SingletonHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/tg/UtilsConfig$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/UtilsConfig;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/tg/UtilsConfig;
    .locals 1

    .line 19
    invoke-static {}, Lcom/alibaba/ailabs/tg/UtilsConfig$SingletonHolder;->access$100()Lcom/alibaba/ailabs/tg/UtilsConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppContext()Landroid/content/Context;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/UtilsConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAppContext(Landroid/content/Context;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/UtilsConfig;->mContext:Landroid/content/Context;

    return-void
.end method
