.class public Lcom/alibaba/jsi/standard/js/JSArray;
.super Lcom/alibaba/jsi/standard/js/JSObject;
.source "ProGuard"


# direct methods
.method public constructor <init>(Lcom/alibaba/jsi/standard/JSContext;)V
    .locals 2

    const/16 v0, 0x8

    .line 9
    invoke-static {p1, v0}, Lcom/alibaba/jsi/standard/js/Bridge;->createNative(Lcom/alibaba/jsi/standard/JSContext;I)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/jsi/standard/js/JSObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/jsi/standard/JSContext;I)V
    .locals 2

    int-to-long v0, p2

    const/16 p2, 0x8

    .line 14
    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->createNative(Lcom/alibaba/jsi/standard/JSContext;IJ)J

    move-result-wide v0

    .line 13
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/jsi/standard/js/JSObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lcom/alibaba/jsi/standard/JSContext;J)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/jsi/standard/js/JSObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public length(Lcom/alibaba/jsi/standard/JSContext;)I
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSArray;->a()V

    .line 28
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSArray;->c:J

    const/16 v2, 0xc8

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 30
    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
