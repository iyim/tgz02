.class Lcom/airbnb/lottie/AnimatableFloatValue$ValueFactory;
.super Ljava/lang/Object;
.source "AnimatableFloatValue.java"

# interfaces
.implements Lcom/airbnb/lottie/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableFloatValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/AnimatableValue$Factory<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/airbnb/lottie/AnimatableFloatValue$ValueFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/airbnb/lottie/AnimatableFloatValue$ValueFactory;

    invoke-direct {v0}, Lcom/airbnb/lottie/AnimatableFloatValue$ValueFactory;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/AnimatableFloatValue$ValueFactory;->INSTANCE:Lcom/airbnb/lottie/AnimatableFloatValue$ValueFactory;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Ljava/lang/Float;
    .locals 0

    .line 35
    invoke-static {p1}, Lcom/airbnb/lottie/JsonUtils;->valueFromObject(Ljava/lang/Object;)F

    move-result p1

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/AnimatableFloatValue$ValueFactory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
