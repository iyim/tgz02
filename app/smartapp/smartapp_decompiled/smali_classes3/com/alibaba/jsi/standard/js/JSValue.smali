.class public Lcom/alibaba/jsi/standard/js/JSValue;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/alibaba/jsi/standard/js/Deletable;


# static fields
.field public static final kAttributeDontDelete:I = 0x4

.field public static final kAttributeDontEnum:I = 0x2

.field public static final kAttributeNone:I = 0x0

.field public static final kAttributeReadOnly:I = 0x1

.field public static final kIntegrityFrozen:I = 0x0

.field public static final kIntegritySealed:I = 0x1


# instance fields
.field private a:Z

.field b:Lcom/alibaba/jsi/standard/JSContext;

.field c:J


# direct methods
.method constructor <init>(Lcom/alibaba/jsi/standard/JSContext;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/alibaba/jsi/standard/js/JSValue;->a:Z

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/alibaba/jsi/standard/js/JSValue;->b:Lcom/alibaba/jsi/standard/JSContext;

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    return-void
.end method

.method constructor <init>(Lcom/alibaba/jsi/standard/JSContext;J)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->a:Z

    .line 30
    iput-object p1, p0, Lcom/alibaba/jsi/standard/js/JSValue;->b:Lcom/alibaba/jsi/standard/JSContext;

    .line 31
    iput-wide p2, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    .line 33
    iget-wide p1, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 34
    iget-object p1, p0, Lcom/alibaba/jsi/standard/js/JSValue;->b:Lcom/alibaba/jsi/standard/JSContext;

    invoke-static {p1, p0}, Lcom/alibaba/jsi/standard/a;->a(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/Deletable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/alibaba/jsi/standard/JSContext;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 0

    return-object p0
.end method

.method final a()V
    .locals 3

    .line 51
    iget-boolean v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSValue has been deleted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asJSObject()Lcom/alibaba/jsi/standard/js/JSObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method b(Lcom/alibaba/jsi/standard/JSContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method final c(Lcom/alibaba/jsi/standard/JSContext;)Lcom/alibaba/jsi/standard/js/JSWeakValue;
    .locals 5

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSValue;->a()V

    .line 212
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/16 v2, 0x35

    .line 214
    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    instance-of v1, v0, Lcom/alibaba/jsi/standard/js/JSValue;

    if-eqz v1, :cond_0

    .line 216
    new-instance v1, Lcom/alibaba/jsi/standard/js/JSWeakValue;

    nop

    nop

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lcom/alibaba/jsi/standard/js/JSWeakValue;-><init>(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Z)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public copy(Lcom/alibaba/jsi/standard/JSContext;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 5

    .line 157
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/16 v2, 0x33

    .line 158
    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    .line 159
    instance-of v0, p1, Lcom/alibaba/jsi/standard/js/JSValue;

    if-eqz v0, :cond_0

    .line 160
    nop

    nop

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createWeak(Lcom/alibaba/jsi/standard/JSContext;)Lcom/alibaba/jsi/standard/js/JSWeakValue;
    .locals 2

    .line 195
    new-instance v0, Lcom/alibaba/jsi/standard/js/JSWeakValue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/alibaba/jsi/standard/js/JSWeakValue;-><init>(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Z)V

    return-object v0
.end method

.method final d(Lcom/alibaba/jsi/standard/JSContext;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 5

    .line 223
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSValue;->a()V

    .line 224
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/16 v2, 0x36

    .line 226
    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    instance-of v0, p1, Lcom/alibaba/jsi/standard/js/JSValue;

    if-eqz v0, :cond_0

    .line 228
    nop

    nop

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public delete()V
    .locals 6

    .line 40
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/alibaba/jsi/standard/js/JSValue;->a:Z

    if-nez v5, :cond_0

    .line 41
    invoke-static {v0, v1, v2}, Lcom/alibaba/jsi/standard/js/Bridge;->nativeDelete(JI)V

    .line 42
    iput-wide v3, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    .line 44
    iget-object v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->b:Lcom/alibaba/jsi/standard/JSContext;

    invoke-static {v0, p0}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/Deletable;)V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->b:Lcom/alibaba/jsi/standard/JSContext;

    .line 47
    :cond_0
    iput-boolean v2, p0, Lcom/alibaba/jsi/standard/js/JSValue;->a:Z

    return-void
.end method

.method final e(Lcom/alibaba/jsi/standard/JSContext;)Z
    .locals 6

    .line 235
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSValue;->a()V

    .line 236
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    const/16 v3, 0x37

    .line 238
    invoke-static {p1, v3, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v2
.end method

.method public equals(Lcom/alibaba/jsi/standard/js/JSValue;)Z
    .locals 7

    .line 183
    iget-wide v2, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    const/4 v6, 0x0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    iget-wide v4, p1, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    cmp-long p1, v4, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x34

    .line 184
    invoke-static/range {v0 .. v5}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v6
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isArrayBuffer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBoolean()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBooleanObject()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFunction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isJSObject()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isName()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNumber()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNumberObject()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPromise()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isString()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStringObject()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSymbol()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSymbolObject()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVoid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public serialize()Lcom/alibaba/jsi/standard/js/JSValueBlob;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->b:Lcom/alibaba/jsi/standard/JSContext;

    invoke-virtual {p0, v0}, Lcom/alibaba/jsi/standard/js/JSValue;->serialize(Lcom/alibaba/jsi/standard/JSContext;)Lcom/alibaba/jsi/standard/js/JSValueBlob;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/alibaba/jsi/standard/JSContext;)Lcom/alibaba/jsi/standard/js/JSValueBlob;
    .locals 3

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSValue;->a()V

    .line 174
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    const/16 v2, 0x2ee

    .line 175
    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 176
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Lcom/alibaba/jsi/standard/js/JSValueBlob;

    nop

    nop

    invoke-direct {v0, p1}, Lcom/alibaba/jsi/standard/js/JSValueBlob;-><init>(Ljava/lang/Long;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;
    .locals 5

    .line 143
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSValue;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/16 v2, 0x32

    .line 144
    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    .line 145
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    nop

    nop

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
