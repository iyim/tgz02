.class public Lcom/alibaba/jsi/standard/js/JSFunction;
.super Lcom/alibaba/jsi/standard/js/JSObject;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/jsi/standard/JSContext;J)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/jsi/standard/js/JSObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/alibaba/jsi/standard/js/JSFunction;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSCallback;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/16 p2, 0xc

    invoke-static {p1, p2, v0}, Lcom/alibaba/jsi/standard/js/Bridge;->createNative(Lcom/alibaba/jsi/standard/JSContext;I[Ljava/lang/Object;)J

    move-result-wide p2

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/jsi/standard/js/JSObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/alibaba/jsi/standard/js/JSFunction;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;[Lcom/alibaba/jsi/standard/js/JSValue;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 5

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSFunction;->a()V

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 30
    array-length v1, p3

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 32
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 33
    aput-object p2, v1, v2

    if-eqz p3, :cond_1

    .line 36
    array-length p2, p3

    :goto_1
    if-ge v2, p2, :cond_1

    aget-object v3, p3, v2

    add-int/lit8 v4, v0, 0x1

    .line 37
    aput-object v3, v1, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_1

    :cond_1
    const/16 p2, 0x226

    .line 40
    iget-wide v2, p0, Lcom/alibaba/jsi/standard/js/JSFunction;->c:J

    invoke-static {p1, p2, v2, v3, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 42
    instance-of p2, p1, Lcom/alibaba/jsi/standard/js/JSValue;

    if-eqz p2, :cond_2

    .line 43
    nop

    nop

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public detach(Lcom/alibaba/jsi/standard/JSContext;)Z
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSFunction;->a()V

    .line 72
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSFunction;->c:J

    const/16 v2, 0x229

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getName(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSFunction;->a()V

    .line 50
    iget-object v0, p0, Lcom/alibaba/jsi/standard/js/JSFunction;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x227

    .line 51
    iget-wide v1, p0, Lcom/alibaba/jsi/standard/js/JSFunction;->c:J

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 54
    nop

    nop

    iput-object p1, p0, Lcom/alibaba/jsi/standard/js/JSFunction;->a:Ljava/lang/String;

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/alibaba/jsi/standard/js/JSFunction;->a:Ljava/lang/String;

    return-object p1
.end method

.method public isFunction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lcom/alibaba/jsi/standard/JSContext;[Lcom/alibaba/jsi/standard/js/JSValue;)Lcom/alibaba/jsi/standard/js/JSObject;
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSFunction;->a()V

    .line 62
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSFunction;->c:J

    const/16 v2, 0x228

    invoke-static {p1, v2, v0, v1, p2}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    instance-of p2, p1, Lcom/alibaba/jsi/standard/js/JSObject;

    if-eqz p2, :cond_0

    .line 65
    nop

    nop

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
