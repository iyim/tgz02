.class final Lcom/alibaba/ailabs/tg/app/AbsApplication$1;
.super Ljava/lang/Object;
.source "AbsApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/app/IAppInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/tg/app/AbsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getEnv()Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;
    .locals 1

    .line 106
    sget-object v0, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;->ONLINE:Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    return-object v0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 1

    const-string v0, "TMSpirit"

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
