.class public Lcom/alibaba/jsi/standard/js/Bridge;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final kContextGetException:I = 0xc

.field public static final kContextGetGlobalObject:I = 0xa

.field public static final kContextHasException:I = 0xb

.field public static final kContextThrowException:I = 0xd

.field public static final kJSEngineGetCurrent:I = 0x3

.field public static final kJSEngineGetType:I = 0x4

.field public static final kJSEngineSetStatObjects:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static cmd(Lcom/alibaba/jsi/standard/JSContext;I)Ljava/lang/Object;
    .locals 8

    .line 376
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->contextNativePtr(Lcom/alibaba/jsi/standard/JSContext;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Lcom/alibaba/jsi/standard/js/Bridge;->nativeCmd(JIJJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;
    .locals 8

    .line 380
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->contextNativePtr(Lcom/alibaba/jsi/standard/JSContext;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-wide v3, p2

    invoke-static/range {v0 .. v7}, Lcom/alibaba/jsi/standard/js/Bridge;->nativeCmd(JIJJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static cmd(Lcom/alibaba/jsi/standard/JSContext;IJJ)Ljava/lang/Object;
    .locals 8

    .line 388
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->contextNativePtr(Lcom/alibaba/jsi/standard/JSContext;)J

    move-result-wide v0

    const/4 v7, 0x0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v7}, Lcom/alibaba/jsi/standard/js/Bridge;->nativeCmd(JIJJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static cmd(Lcom/alibaba/jsi/standard/JSContext;IJJ[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 397
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->contextNativePtr(Lcom/alibaba/jsi/standard/JSContext;)J

    move-result-wide v0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/alibaba/jsi/standard/js/Bridge;->nativeCmd(JIJJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static cmd(Lcom/alibaba/jsi/standard/JSContext;IJ[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 392
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->contextNativePtr(Lcom/alibaba/jsi/standard/JSContext;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    move v2, p1

    move-wide v3, p2

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/alibaba/jsi/standard/js/Bridge;->nativeCmd(JIJJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static cmd(Lcom/alibaba/jsi/standard/JSContext;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 384
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->contextNativePtr(Lcom/alibaba/jsi/standard/JSContext;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move v2, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/alibaba/jsi/standard/js/Bridge;->nativeCmd(JIJJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static contextNativePtr(Lcom/alibaba/jsi/standard/JSContext;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/JSContext;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method

.method protected static createJava(IJJ)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/16 v0, 0x13

    if-ne v0, p0, :cond_0

    .line 111
    new-instance p0, Lcom/alibaba/jsi/standard/js/Arguments;

    invoke-direct {p0, p3, p4}, Lcom/alibaba/jsi/standard/js/Arguments;-><init>(J)V

    return-object p0

    .line 114
    :cond_0
    invoke-static {p1, p2}, Lcom/alibaba/jsi/standard/js/Bridge;->toContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object p1

    packed-switch p0, :pswitch_data_0

    .line 159
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Create JSI java object with unknown type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "jsi"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 156
    :pswitch_1
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSException;

    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSException;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    return-object p0

    .line 153
    :pswitch_2
    new-instance p0, Lcom/alibaba/jsi/standard/js/Template;

    invoke-direct {p0, p3, p4}, Lcom/alibaba/jsi/standard/js/Template;-><init>(J)V

    return-object p0

    .line 150
    :pswitch_3
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSSymbolObject;

    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSSymbolObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    return-object p0

    .line 147
    :pswitch_4
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSStringObject;

    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSStringObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    return-object p0

    .line 144
    :pswitch_5
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSNumberObject;

    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSNumberObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    return-object p0

    .line 141
    :pswitch_6
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSBooleanObject;

    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSBooleanObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    return-object p0

    .line 138
    :pswitch_7
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSPromise;

    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSPromise;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    return-object p0

    .line 135
    :pswitch_8
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSFunction;

    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSFunction;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    return-object p0

    .line 132
    :pswitch_9
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSArrayBuffer;

    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSArrayBuffer;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    return-object p0

    .line 129
    :pswitch_a
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSSet;

    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSSet;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    return-object p0

    .line 126
    :pswitch_b
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSMap;

    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSMap;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    return-object p0

    .line 123
    :pswitch_c
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSArray;

    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSArray;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    return-object p0

    .line 120
    :pswitch_d
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSObject;

    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    return-object p0

    .line 117
    :pswitch_e
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSSymbol;

    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSSymbol;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected static createJavaPrimitive(IZDLjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 p2, 0x4

    if-eq p0, p2, :cond_1

    const/4 p2, 0x6

    if-eq p0, p2, :cond_0

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Create JSI primitive java object with unknown type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "jsi"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSVoid;

    invoke-direct {p0, p1}, Lcom/alibaba/jsi/standard/js/JSVoid;-><init>(Z)V

    return-object p0

    .line 55
    :cond_1
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSString;

    invoke-direct {p0, p4}, Lcom/alibaba/jsi/standard/js/JSString;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 52
    :cond_2
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSNumber;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/jsi/standard/js/JSNumber;-><init>(D)V

    return-object p0

    .line 49
    :cond_3
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSNumber;

    double-to-int p1, p2

    invoke-direct {p0, p1}, Lcom/alibaba/jsi/standard/js/JSNumber;-><init>(I)V

    return-object p0

    .line 46
    :cond_4
    new-instance p0, Lcom/alibaba/jsi/standard/js/JSBoolean;

    invoke-direct {p0, p1}, Lcom/alibaba/jsi/standard/js/JSBoolean;-><init>(Z)V

    return-object p0
.end method

.method public static createNative(Lcom/alibaba/jsi/standard/JSContext;I)J
    .locals 8

    .line 213
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->contextNativePtr(Lcom/alibaba/jsi/standard/JSContext;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Lcom/alibaba/jsi/standard/js/Bridge;->nativeCreate(JIJD[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static createNative(Lcom/alibaba/jsi/standard/JSContext;IJ)J
    .locals 8

    .line 221
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->contextNativePtr(Lcom/alibaba/jsi/standard/JSContext;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-wide v3, p2

    invoke-static/range {v0 .. v7}, Lcom/alibaba/jsi/standard/js/Bridge;->nativeCreate(JIJD[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static createNative(Lcom/alibaba/jsi/standard/JSContext;IJD)J
    .locals 8

    .line 226
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->contextNativePtr(Lcom/alibaba/jsi/standard/JSContext;)J

    move-result-wide v0

    const/4 v7, 0x0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v7}, Lcom/alibaba/jsi/standard/js/Bridge;->nativeCreate(JIJD[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static createNative(Lcom/alibaba/jsi/standard/JSContext;IJD[Ljava/lang/Object;)J
    .locals 8

    .line 231
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->contextNativePtr(Lcom/alibaba/jsi/standard/JSContext;)J

    move-result-wide v0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/alibaba/jsi/standard/js/Bridge;->nativeCreate(JIJD[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static createNative(Lcom/alibaba/jsi/standard/JSContext;I[Ljava/lang/Object;)J
    .locals 8

    .line 217
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->contextNativePtr(Lcom/alibaba/jsi/standard/JSContext;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move v2, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/alibaba/jsi/standard/js/Bridge;->nativeCreate(JIJD[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static detachNative(Ljava/lang/Object;)Z
    .locals 6
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 193
    :cond_0
    instance-of v1, p0, Lcom/alibaba/jsi/standard/js/JSValue;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    .line 194
    check-cast p0, Lcom/alibaba/jsi/standard/js/JSValue;

    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->b:Lcom/alibaba/jsi/standard/JSContext;

    invoke-static {v0, p0}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/Deletable;)V

    iput-wide v3, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    :cond_1
    return v2

    .line 197
    :cond_2
    instance-of v1, p0, Lcom/alibaba/jsi/standard/js/Arguments;

    if-eqz v1, :cond_3

    .line 198
    nop

    nop

    iput-boolean v2, p0, Lcom/alibaba/jsi/standard/js/Arguments;->b:Z

    iput-wide v3, p0, Lcom/alibaba/jsi/standard/js/Arguments;->a:J

    return v2

    .line 201
    :cond_3
    instance-of v1, p0, Lcom/alibaba/jsi/standard/js/JSException;

    if-eqz v1, :cond_5

    .line 202
    nop

    nop

    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSException;->b:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/alibaba/jsi/standard/js/JSException;->a:Lcom/alibaba/jsi/standard/JSContext;

    invoke-static {v0, p0}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/Deletable;)V

    iput-wide v3, p0, Lcom/alibaba/jsi/standard/js/JSException;->b:J

    :cond_4
    return v2

    .line 205
    :cond_5
    instance-of v1, p0, Lcom/alibaba/jsi/standard/js/Template;

    if-eqz v1, :cond_7

    .line 206
    nop

    nop

    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/Template;->a:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_6

    invoke-static {p0}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/js/Template;)V

    iput-wide v3, p0, Lcom/alibaba/jsi/standard/js/Template;->a:J

    :cond_6
    return v2

    :cond_7
    return v0
.end method

.method public static engineCmd(Lcom/alibaba/jsi/standard/JSEngine;IJ)Ljava/lang/Object;
    .locals 8

    .line 401
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/JSEngine;->getNativeInstance()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-wide v3, p2

    invoke-static/range {v0 .. v7}, Lcom/alibaba/jsi/standard/js/Bridge;->nativeCmd(JIJJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static getBooleanValue(Ljava/lang/Object;)Z
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 86
    check-cast p0, Lcom/alibaba/jsi/standard/js/JSBoolean;

    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSBoolean;->valueOf()Z

    move-result p0

    return p0
.end method

.method protected static getNativePtr(Ljava/lang/Object;)J
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 173
    :cond_0
    instance-of v2, p0, Lcom/alibaba/jsi/standard/js/JSValue;

    if-eqz v2, :cond_1

    .line 174
    nop

    nop

    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    return-wide v0

    .line 176
    :cond_1
    instance-of v2, p0, Lcom/alibaba/jsi/standard/js/Arguments;

    if-eqz v2, :cond_2

    .line 177
    nop

    nop

    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/Arguments;->a:J

    return-wide v0

    .line 179
    :cond_2
    instance-of v2, p0, Lcom/alibaba/jsi/standard/js/JSException;

    if-eqz v2, :cond_3

    .line 180
    nop

    nop

    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSException;->b:J

    return-wide v0

    .line 182
    :cond_3
    instance-of v2, p0, Lcom/alibaba/jsi/standard/js/Template;

    if-eqz v2, :cond_4

    .line 183
    nop

    nop

    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/Template;->a:J

    :cond_4
    return-wide v0
.end method

.method protected static getNumberValue(Ljava/lang/Object;)D
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 91
    check-cast p0, Lcom/alibaba/jsi/standard/js/JSNumber;

    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSNumber;->valueOf()D

    move-result-wide v0

    return-wide v0
.end method

.method protected static getPrimitiveType(Ljava/lang/Object;)I
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 69
    instance-of v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;

    if-eqz v0, :cond_4

    .line 70
    nop

    nop

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSValue;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSValue;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    check-cast p0, Lcom/alibaba/jsi/standard/js/JSNumber;

    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSNumber;->isInteger()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSValue;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSValue;->isVoid()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method protected static getStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 96
    check-cast p0, Lcom/alibaba/jsi/standard/js/JSString;

    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSString;->valueOf()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeCmd(JIJJ[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private static native nativeCreate(JIJD[Ljava/lang/Object;)J
.end method

.method public static native nativeDelete(JI)V
.end method

.method protected static onCallConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 426
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;

    move-result-object p0

    check-cast p1, Lcom/alibaba/jsi/standard/js/Arguments;

    invoke-virtual {p0, p1}, Lcom/alibaba/jsi/standard/js/JSCallback;->onCallConstructor(Lcom/alibaba/jsi/standard/js/Arguments;)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p0

    return-object p0
.end method

.method protected static onCallFunction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 421
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;

    move-result-object p0

    check-cast p1, Lcom/alibaba/jsi/standard/js/Arguments;

    invoke-virtual {p0, p1}, Lcom/alibaba/jsi/standard/js/JSCallback;->onCallFunction(Lcom/alibaba/jsi/standard/js/Arguments;)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p0

    return-object p0
.end method

.method protected static onDeleteIndexedProperty(Ljava/lang/Object;JLjava/lang/Object;I)Z
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 503
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;

    move-result-object p0

    .line 504
    invoke-static {p1, p2}, Lcom/alibaba/jsi/standard/js/Bridge;->toContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object p1

    check-cast p3, Lcom/alibaba/jsi/standard/js/JSValue;

    .line 503
    invoke-virtual {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSCallback;->onDeleteIndexedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;I)Z

    move-result p0

    return p0
.end method

.method protected static onDeleteNamedProperty(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/String;)Z
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 468
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;

    move-result-object p0

    .line 469
    invoke-static {p1, p2}, Lcom/alibaba/jsi/standard/js/Bridge;->toContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object p1

    check-cast p3, Lcom/alibaba/jsi/standard/js/JSValue;

    .line 468
    invoke-virtual {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSCallback;->onDeleteNamedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static onEnumerateIndexedProperty(Ljava/lang/Object;JLjava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 510
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;

    move-result-object p0

    .line 511
    invoke-static {p1, p2}, Lcom/alibaba/jsi/standard/js/Bridge;->toContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object p1

    check-cast p3, Lcom/alibaba/jsi/standard/js/JSValue;

    .line 510
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/jsi/standard/js/JSCallback;->onEnumerateIndexedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;)[Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p0

    return-object p0
.end method

.method protected static onEnumerateNamedProperty(Ljava/lang/Object;JLjava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 475
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;

    move-result-object p0

    .line 476
    invoke-static {p1, p2}, Lcom/alibaba/jsi/standard/js/Bridge;->toContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object p1

    check-cast p3, Lcom/alibaba/jsi/standard/js/JSValue;

    .line 475
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/jsi/standard/js/JSCallback;->onEnumerateNamedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;)[Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p0

    return-object p0
.end method

.method protected static onGetIndexedProperty(Ljava/lang/Object;JLjava/lang/Object;I)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 482
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;

    move-result-object p0

    .line 483
    invoke-static {p1, p2}, Lcom/alibaba/jsi/standard/js/Bridge;->toContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object p1

    check-cast p3, Lcom/alibaba/jsi/standard/js/JSValue;

    .line 482
    invoke-virtual {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSCallback;->onGetIndexedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;I)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p0

    return-object p0
.end method

.method protected static onGetNamedProperty(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 446
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;

    move-result-object p0

    .line 447
    invoke-static {p1, p2}, Lcom/alibaba/jsi/standard/js/Bridge;->toContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object p1

    check-cast p3, Lcom/alibaba/jsi/standard/js/JSValue;

    .line 446
    invoke-virtual {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSCallback;->onGetNamedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Ljava/lang/String;)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p0

    return-object p0
.end method

.method protected static onGetProperty(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 432
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;

    move-result-object p0

    .line 433
    invoke-static {p1, p2}, Lcom/alibaba/jsi/standard/js/Bridge;->toContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object p1

    check-cast p3, Lcom/alibaba/jsi/standard/js/JSValue;

    .line 432
    invoke-virtual {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSCallback;->onGetProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Ljava/lang/String;)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p0

    return-object p0
.end method

.method protected static onQueryIndexedProperty(Ljava/lang/Object;JLjava/lang/Object;I)I
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 496
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;

    move-result-object p0

    .line 497
    invoke-static {p1, p2}, Lcom/alibaba/jsi/standard/js/Bridge;->toContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object p1

    check-cast p3, Lcom/alibaba/jsi/standard/js/JSValue;

    .line 496
    invoke-virtual {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSCallback;->onQueryIndexedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;I)I

    move-result p0

    return p0
.end method

.method protected static onQueryNamedProperty(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/String;)I
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 461
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;

    move-result-object p0

    .line 462
    invoke-static {p1, p2}, Lcom/alibaba/jsi/standard/js/Bridge;->toContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object p1

    check-cast p3, Lcom/alibaba/jsi/standard/js/JSValue;

    .line 461
    invoke-virtual {p0, p1, p3, p4}, Lcom/alibaba/jsi/standard/js/JSCallback;->onQueryNamedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected static onSetIndexedProperty(Ljava/lang/Object;JLjava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 489
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;

    move-result-object p0

    .line 490
    invoke-static {p1, p2}, Lcom/alibaba/jsi/standard/js/Bridge;->toContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object p1

    check-cast p3, Lcom/alibaba/jsi/standard/js/JSValue;

    check-cast p5, Lcom/alibaba/jsi/standard/js/JSValue;

    .line 489
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/alibaba/jsi/standard/js/JSCallback;->onSetIndexedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;ILcom/alibaba/jsi/standard/js/JSValue;)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p0

    return-object p0
.end method

.method protected static onSetNamedProperty(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 454
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;

    move-result-object p0

    .line 455
    invoke-static {p1, p2}, Lcom/alibaba/jsi/standard/js/Bridge;->toContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object p1

    check-cast p3, Lcom/alibaba/jsi/standard/js/JSValue;

    check-cast p5, Lcom/alibaba/jsi/standard/js/JSValue;

    .line 454
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/alibaba/jsi/standard/js/JSCallback;->onSetNamedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Ljava/lang/String;Lcom/alibaba/jsi/standard/js/JSValue;)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p0

    return-object p0
.end method

.method protected static onSetProperty(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 439
    invoke-static {p0}, Lcom/alibaba/jsi/standard/js/Bridge;->unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;

    move-result-object p0

    .line 440
    invoke-static {p1, p2}, Lcom/alibaba/jsi/standard/js/Bridge;->toContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object p1

    check-cast p3, Lcom/alibaba/jsi/standard/js/JSValue;

    check-cast p5, Lcom/alibaba/jsi/standard/js/JSValue;

    .line 439
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/alibaba/jsi/standard/js/JSCallback;->onSetProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Ljava/lang/String;Lcom/alibaba/jsi/standard/js/JSValue;)V

    return-void
.end method

.method private static toContext(J)Lcom/alibaba/jsi/standard/JSContext;
    .locals 0

    .line 413
    invoke-static {p0, p1}, Lcom/alibaba/jsi/standard/JSContext;->getContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object p0

    return-object p0
.end method

.method private static unwrap(Ljava/lang/Object;)Lcom/alibaba/jsi/standard/js/JSCallback;
    .locals 0

    .line 409
    check-cast p0, Lcom/alibaba/jsi/standard/js/JSCallback;

    return-object p0
.end method

.method protected static voidIsUndefined(Ljava/lang/Object;)Z
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 101
    check-cast p0, Lcom/alibaba/jsi/standard/js/JSVoid;

    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSVoid;->isUndefined()Z

    move-result p0

    return p0
.end method
