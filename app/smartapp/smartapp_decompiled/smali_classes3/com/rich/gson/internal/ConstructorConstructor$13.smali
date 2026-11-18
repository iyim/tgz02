.class Lcom/rich/gson/internal/ConstructorConstructor$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rich/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/rich/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/rich/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rich/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lcom/rich/gson/internal/ConstructorConstructor;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/gson/internal/ConstructorConstructor$13;->this$0:Lcom/rich/gson/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Lcom/rich/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/rich/gson/internal/LinkedTreeMap;-><init>()V

    return-object v0
.end method
