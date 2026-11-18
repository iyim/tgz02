.class public interface abstract Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/Deserializer;
.super Ljava/lang/Object;
.source "Deserializer.java"


# static fields
.field public static final sInjector:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    :goto_0
    sput-object v0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/Deserializer;->sInjector:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract parser()Ljava/lang/Object;
.end method
