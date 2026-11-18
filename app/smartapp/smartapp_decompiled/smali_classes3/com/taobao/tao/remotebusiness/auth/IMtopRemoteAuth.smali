.class public abstract Lcom/taobao/tao/remotebusiness/auth/IMtopRemoteAuth;
.super Ljava/lang/Object;
.source "IMtopRemoteAuth.java"

# interfaces
.implements Lcom/taobao/tao/remotebusiness/auth/IRemoteAuth;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public abstract authorize(Lcom/taobao/tao/remotebusiness/auth/AuthParam;Lcom/taobao/tao/remotebusiness/auth/AuthListener;)V
.end method

.method public authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/taobao/tao/remotebusiness/auth/AuthListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    new-instance v0, Lcom/taobao/tao/remotebusiness/auth/AuthParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p4}, Lcom/taobao/tao/remotebusiness/auth/AuthParam;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    iput-object p2, v0, Lcom/taobao/tao/remotebusiness/auth/AuthParam;->apiInfo:Ljava/lang/String;

    .line 48
    iput-object p3, v0, Lcom/taobao/tao/remotebusiness/auth/AuthParam;->failInfo:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v0, p5}, Lcom/taobao/tao/remotebusiness/auth/IMtopRemoteAuth;->authorize(Lcom/taobao/tao/remotebusiness/auth/AuthParam;Lcom/taobao/tao/remotebusiness/auth/AuthListener;)V

    return-void
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getAuthToken(Lcom/taobao/tao/remotebusiness/auth/AuthParam;)Ljava/lang/String;
.end method

.method public isAuthInfoValid()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isAuthInfoValid(Lcom/taobao/tao/remotebusiness/auth/AuthParam;)Z
.end method

.method public isAuthorizing()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isAuthorizing(Lcom/taobao/tao/remotebusiness/auth/AuthParam;)Z
.end method
