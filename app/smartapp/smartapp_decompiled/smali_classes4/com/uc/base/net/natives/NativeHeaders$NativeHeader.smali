.class public Lcom/uc/base/net/natives/NativeHeaders$NativeHeader;
.super Ljava/lang/Object;
.source "NativeHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/base/net/natives/NativeHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeHeader"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/uc/base/net/adaptor/Headers$Header;)V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-virtual {p1}, Lcom/uc/base/net/adaptor/Headers$Header;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/base/net/natives/NativeHeaders$NativeHeader;->name:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Lcom/uc/base/net/adaptor/Headers$Header;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/base/net/natives/NativeHeaders$NativeHeader;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/uc/base/net/natives/NativeHeaders$NativeHeader;)V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iget-object v0, p1, Lcom/uc/base/net/natives/NativeHeaders$NativeHeader;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/base/net/natives/NativeHeaders$NativeHeader;->name:Ljava/lang/String;

    .line 230
    iget-object p1, p1, Lcom/uc/base/net/natives/NativeHeaders$NativeHeader;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/uc/base/net/natives/NativeHeaders$NativeHeader;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/uc/base/net/natives/NativeHeaders$NativeHeader;->name:Ljava/lang/String;

    .line 240
    iput-object p2, p0, Lcom/uc/base/net/natives/NativeHeaders$NativeHeader;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHeaders$NativeHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHeaders$NativeHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/uc/base/net/natives/NativeHeaders$NativeHeader;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/uc/base/net/natives/NativeHeaders$NativeHeader;->value:Ljava/lang/String;

    return-void
.end method
