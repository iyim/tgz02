.class public Lcom/alibaba/jsi/standard/js/JSPromise$Resolver;
.super Lcom/alibaba/jsi/standard/js/JSObject;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/jsi/standard/js/JSPromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Resolver"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/jsi/standard/js/JSPromise;


# direct methods
.method public constructor <init>(Lcom/alibaba/jsi/standard/js/JSPromise;Lcom/alibaba/jsi/standard/JSContext;)V
    .locals 2

    .line 9
    iput-object p1, p0, Lcom/alibaba/jsi/standard/js/JSPromise$Resolver;->a:Lcom/alibaba/jsi/standard/js/JSPromise;

    const/16 p1, 0xe

    .line 11
    invoke-static {p2, p1}, Lcom/alibaba/jsi/standard/js/Bridge;->createNative(Lcom/alibaba/jsi/standard/JSContext;I)J

    move-result-wide v0

    .line 10
    invoke-direct {p0, p2, v0, v1}, Lcom/alibaba/jsi/standard/js/JSObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    return-void
.end method


# virtual methods
.method public getPromise(Lcom/alibaba/jsi/standard/JSContext;)Lcom/alibaba/jsi/standard/js/JSPromise;
    .locals 3

    .line 15
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSPromise$Resolver;->a()V

    .line 16
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSPromise$Resolver;->c:J

    const/16 v2, 0x190

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    instance-of v0, p1, Lcom/alibaba/jsi/standard/js/JSPromise;

    if-eqz v0, :cond_0

    .line 19
    nop

    nop

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public reject(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;)Z
    .locals 5

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSPromise$Resolver;->a()V

    .line 34
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSPromise$Resolver;->c:J

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/16 p2, 0x192

    invoke-static {p1, p2, v0, v1, v3}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v4
.end method

.method public resolve(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;)Z
    .locals 5

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSPromise$Resolver;->a()V

    .line 26
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSPromise$Resolver;->c:J

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/16 p2, 0x191

    invoke-static {p1, p2, v0, v1, v3}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v4
.end method
