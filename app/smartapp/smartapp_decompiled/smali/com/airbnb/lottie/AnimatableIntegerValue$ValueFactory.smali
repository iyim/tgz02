.class Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;
.super Ljava/lang/Object;
.source "AnimatableIntegerValue.java"

# interfaces
.implements Lcom/airbnb/lottie/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableIntegerValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/AnimatableValue$Factory<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;

    invoke-direct {v0}, Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;->INSTANCE:Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;
    .locals 1

    .line 46
    sget-object v0, Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;->INSTANCE:Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;

    return-object v0
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Ljava/lang/Integer;
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/airbnb/lottie/JsonUtils;->valueFromObject(Ljava/lang/Object;)F

    move-result p1

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
