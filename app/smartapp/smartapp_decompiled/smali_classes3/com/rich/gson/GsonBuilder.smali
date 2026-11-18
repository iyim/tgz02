.class public final Lcom/rich/gson/GsonBuilder;
.super Ljava/lang/Object;


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/rich/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/rich/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/rich/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private lenient:Z

.field private longSerializationPolicy:Lcom/rich/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/rich/gson/internal/Excluder;->DEFAULT:Lcom/rich/gson/internal/Excluder;

    iput-object v0, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    sget-object v0, Lcom/rich/gson/LongSerializationPolicy;->DEFAULT:Lcom/rich/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/rich/gson/GsonBuilder;->longSerializationPolicy:Lcom/rich/gson/LongSerializationPolicy;

    sget-object v0, Lcom/rich/gson/FieldNamingPolicy;->IDENTITY:Lcom/rich/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/rich/gson/GsonBuilder;->fieldNamingPolicy:Lcom/rich/gson/FieldNamingStrategy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rich/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rich/gson/GsonBuilder;->factories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rich/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rich/gson/GsonBuilder;->serializeNulls:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/rich/gson/GsonBuilder;->dateStyle:I

    iput v1, p0, Lcom/rich/gson/GsonBuilder;->timeStyle:I

    iput-boolean v0, p0, Lcom/rich/gson/GsonBuilder;->complexMapKeySerialization:Z

    iput-boolean v0, p0, Lcom/rich/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rich/gson/GsonBuilder;->escapeHtmlChars:Z

    iput-boolean v0, p0, Lcom/rich/gson/GsonBuilder;->prettyPrinting:Z

    iput-boolean v0, p0, Lcom/rich/gson/GsonBuilder;->generateNonExecutableJson:Z

    iput-boolean v0, p0, Lcom/rich/gson/GsonBuilder;->lenient:Z

    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/rich/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lcom/rich/gson/DefaultDateTypeAdapter;

    const-class p3, Ljava/util/Date;

    invoke-direct {p2, p3, p1}, Lcom/rich/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance p3, Lcom/rich/gson/DefaultDateTypeAdapter;

    const-class v0, Ljava/sql/Timestamp;

    invoke-direct {p3, v0, p1}, Lcom/rich/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Lcom/rich/gson/DefaultDateTypeAdapter;

    const-class v1, Ljava/sql/Date;

    invoke-direct {v0, v1, p1}, Lcom/rich/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    if-eq p3, p1, :cond_1

    new-instance p1, Lcom/rich/gson/DefaultDateTypeAdapter;

    const-class v0, Ljava/util/Date;

    invoke-direct {p1, v0, p2, p3}, Lcom/rich/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    new-instance v0, Lcom/rich/gson/DefaultDateTypeAdapter;

    const-class v1, Ljava/sql/Timestamp;

    invoke-direct {v0, v1, p2, p3}, Lcom/rich/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    new-instance v1, Lcom/rich/gson/DefaultDateTypeAdapter;

    const-class v2, Ljava/sql/Date;

    invoke-direct {v1, v2, p2, p3}, Lcom/rich/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    move-object p3, v0

    move-object v0, v1

    :goto_0
    const-class p2, Ljava/util/Date;

    invoke-static {p2, p1}, Lcom/rich/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/rich/gson/TypeAdapter;)Lcom/rich/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p1, Ljava/sql/Timestamp;

    invoke-static {p1, p3}, Lcom/rich/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/rich/gson/TypeAdapter;)Lcom/rich/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p1, Ljava/sql/Date;

    invoke-static {p1, v0}, Lcom/rich/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/rich/gson/TypeAdapter;)Lcom/rich/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lcom/rich/gson/ExclusionStrategy;)Lcom/rich/gson/GsonBuilder;
    .locals 3

    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/rich/gson/internal/Excluder;->withExclusionStrategy(Lcom/rich/gson/ExclusionStrategy;ZZ)Lcom/rich/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcom/rich/gson/ExclusionStrategy;)Lcom/rich/gson/GsonBuilder;
    .locals 3

    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/rich/gson/internal/Excluder;->withExclusionStrategy(Lcom/rich/gson/ExclusionStrategy;ZZ)Lcom/rich/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    return-object p0
.end method

.method public create()Lcom/rich/gson/Gson;
    .locals 14

    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/rich/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v1, p0, Lcom/rich/gson/GsonBuilder;->dateStyle:I

    iget v2, p0, Lcom/rich/gson/GsonBuilder;->timeStyle:I

    invoke-direct {p0, v0, v1, v2, v12}, Lcom/rich/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    new-instance v13, Lcom/rich/gson/Gson;

    iget-object v1, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    iget-object v2, p0, Lcom/rich/gson/GsonBuilder;->fieldNamingPolicy:Lcom/rich/gson/FieldNamingStrategy;

    iget-object v3, p0, Lcom/rich/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/rich/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v5, p0, Lcom/rich/gson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v6, p0, Lcom/rich/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v7, p0, Lcom/rich/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v8, p0, Lcom/rich/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v9, p0, Lcom/rich/gson/GsonBuilder;->lenient:Z

    iget-boolean v10, p0, Lcom/rich/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v11, p0, Lcom/rich/gson/GsonBuilder;->longSerializationPolicy:Lcom/rich/gson/LongSerializationPolicy;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/rich/gson/Gson;-><init>(Lcom/rich/gson/internal/Excluder;Lcom/rich/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/rich/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v13
.end method

.method public disableHtmlEscaping()Lcom/rich/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rich/gson/GsonBuilder;->escapeHtmlChars:Z

    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/rich/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/rich/gson/internal/Excluder;->disableInnerClassSerialization()Lcom/rich/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcom/rich/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rich/gson/GsonBuilder;->complexMapKeySerialization:Z

    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/rich/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    invoke-virtual {v0, p1}, Lcom/rich/gson/internal/Excluder;->withModifiers([I)Lcom/rich/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/rich/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/rich/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/rich/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/rich/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rich/gson/GsonBuilder;->generateNonExecutableJson:Z

    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/rich/gson/GsonBuilder;
    .locals 3

    instance-of v0, p2, Lcom/rich/gson/JsonSerializer;

    if-nez v0, :cond_1

    instance-of v1, p2, Lcom/rich/gson/JsonDeserializer;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/rich/gson/InstanceCreator;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/rich/gson/TypeAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/rich/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    instance-of v1, p2, Lcom/rich/gson/InstanceCreator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/rich/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, Lcom/rich/gson/InstanceCreator;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/rich/gson/JsonDeserializer;

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p1}, Lcom/rich/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/rich/gson/reflect/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lcom/rich/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/rich/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/rich/gson/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v0, p2, Lcom/rich/gson/TypeAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {p1}, Lcom/rich/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/rich/gson/reflect/TypeToken;

    move-result-object p1

    nop

    nop

    invoke-static {p1, p2}, Lcom/rich/gson/internal/bind/TypeAdapters;->newFactory(Lcom/rich/gson/reflect/TypeToken;Lcom/rich/gson/TypeAdapter;)Lcom/rich/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p0
.end method

.method public registerTypeAdapterFactory(Lcom/rich/gson/TypeAdapterFactory;)Lcom/rich/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/rich/gson/GsonBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/rich/gson/GsonBuilder;"
        }
    .end annotation

    instance-of v0, p2, Lcom/rich/gson/JsonSerializer;

    if-nez v0, :cond_1

    instance-of v1, p2, Lcom/rich/gson/JsonDeserializer;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/rich/gson/TypeAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/rich/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    instance-of v1, p2, Lcom/rich/gson/JsonDeserializer;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/rich/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of v0, p2, Lcom/rich/gson/TypeAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->factories:Ljava/util/List;

    nop

    nop

    invoke-static {p1, p2}, Lcom/rich/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/rich/gson/TypeAdapter;)Lcom/rich/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method

.method public serializeNulls()Lcom/rich/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rich/gson/GsonBuilder;->serializeNulls:Z

    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/rich/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rich/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    return-object p0
.end method

.method public setDateFormat(I)Lcom/rich/gson/GsonBuilder;
    .locals 0

    iput p1, p0, Lcom/rich/gson/GsonBuilder;->dateStyle:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/rich/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(II)Lcom/rich/gson/GsonBuilder;
    .locals 0

    iput p1, p0, Lcom/rich/gson/GsonBuilder;->dateStyle:I

    iput p2, p0, Lcom/rich/gson/GsonBuilder;->timeStyle:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/rich/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/rich/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/rich/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/rich/gson/ExclusionStrategy;)Lcom/rich/gson/GsonBuilder;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v4}, Lcom/rich/gson/internal/Excluder;->withExclusionStrategy(Lcom/rich/gson/ExclusionStrategy;ZZ)Lcom/rich/gson/internal/Excluder;

    move-result-object v2

    iput-object v2, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/rich/gson/FieldNamingPolicy;)Lcom/rich/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/rich/gson/GsonBuilder;->fieldNamingPolicy:Lcom/rich/gson/FieldNamingStrategy;

    return-object p0
.end method

.method public setFieldNamingStrategy(Lcom/rich/gson/FieldNamingStrategy;)Lcom/rich/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/rich/gson/GsonBuilder;->fieldNamingPolicy:Lcom/rich/gson/FieldNamingStrategy;

    return-object p0
.end method

.method public setLenient()Lcom/rich/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rich/gson/GsonBuilder;->lenient:Z

    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/rich/gson/LongSerializationPolicy;)Lcom/rich/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/rich/gson/GsonBuilder;->longSerializationPolicy:Lcom/rich/gson/LongSerializationPolicy;

    return-object p0
.end method

.method public setPrettyPrinting()Lcom/rich/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rich/gson/GsonBuilder;->prettyPrinting:Z

    return-object p0
.end method

.method public setVersion(D)Lcom/rich/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/rich/gson/internal/Excluder;->withVersion(D)Lcom/rich/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/rich/gson/GsonBuilder;->excluder:Lcom/rich/gson/internal/Excluder;

    return-object p0
.end method
