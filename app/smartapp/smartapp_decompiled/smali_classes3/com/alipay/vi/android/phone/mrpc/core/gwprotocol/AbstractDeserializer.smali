.class public abstract Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;
.super Ljava/lang/Object;
.source "AbstractDeserializer.java"

# interfaces
.implements Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/Deserializer;


# instance fields
.field protected mData:[B

.field protected mType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;->mType:Ljava/lang/reflect/Type;

    .line 24
    iput-object p2, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;->mData:[B

    .line 25
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
