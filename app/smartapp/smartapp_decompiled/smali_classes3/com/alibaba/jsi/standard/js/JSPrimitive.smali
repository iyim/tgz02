.class public Lcom/alibaba/jsi/standard/js/JSPrimitive;
.super Lcom/alibaba/jsi/standard/js/JSValue;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/alibaba/jsi/standard/js/JSValue;-><init>(Lcom/alibaba/jsi/standard/JSContext;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lcom/alibaba/jsi/standard/JSContext;J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/jsi/standard/js/JSValue;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
