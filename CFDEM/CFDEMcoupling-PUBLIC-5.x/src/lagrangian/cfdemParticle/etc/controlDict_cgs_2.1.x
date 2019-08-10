/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     | Version:  2.0.0                                 |
|   \\  /    A nd           | Web:      www.OpenFOAM.org                      |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       dictionary;
    object      controlDict;
}

// NB: the #functions do not work here
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

Documentation
{
    docBrowser      "firefox %f";
    doxyDocDirs
    (
        "$WM_PROJECT_USER_DIR/html"
        "~OpenFOAM/html"
        "$WM_PROJECT_DIR/doc/Doxygen/html"
    );
    doxySourceFileExts
    (
        "App_8C.html"
        "_8C.html"
    );
}


InfoSwitches
{
    writePrecision  6;
    writeJobInfo    0;
    writeDictionaries 0;

    // Allow case-supplied C++ code (#codeStream, codedFixedValue)
    allowSystemOperations   0;
}


OptimisationSwitches
{
    fileModificationSkew 10;

    //- Modification checking:
    //  - timeStamp         : use modification time on file
    //  - inotify           : use inotify framework
    //  - timeStampMaster   : do time stamp (and file reading) only on master.
    //  - inotifyMaster     : do inotify (and file reading) only on master.
    fileModificationChecking timeStampMaster;//inotify;timeStamp;inotifyMaster;

    commsType       nonBlocking; //scheduled; //blocking;
    floatTransfer   0;
    nProcsSimpleSum 0;

    // Force dumping (at next timestep) upon signal (-1 to disable)
    writeNowSignal              -1; //10;
    // Force dumping (at next timestep) upon signal (-1 to disable) and exit
    stopAtWriteNowSignal        -1;
}


DebugSwitches
{
    Analytical          0;
    APIdiffCoefFunc     0;
    Ar                  0;
    BICCG               0;
    BirdCarreau         0;
    C10H22              0;
    C12H26              0;
    C13H28              0;
    C14H30              0;
    C16H34              0;
    C2H5OH              0;
    C2H6                0;
    C2H6O               0;
    C3H6O               0;
    C3H8                0;
    C4H10O              0;
    C6H14               0;
    C6H6                0;
    C7H16               0;
    C7H8                0;
    C8H10               0;
    C8H18               0;
    C9H20               0;
    CH3OH               0;
    CH4N2O              0;
    CarnahanStarling    0;
    CallbackRegistry    0;
    CentredFitData<biLinearFitPolynomial>           0;
    CentredFitData<linearFitPolynomial>             0;
    CentredFitData<quadraticFitPolynomial>          0;
    CentredFitData<quadraticLinearFitPolynomial>    0;
    ChomiakInjector     0;
    Cloud<basicKinematicParcel> 0;
    Cloud<basicReactingParcel>  0;
    Cloud<basicThermoParcel>    0;
    Cloud<indexedParticle>  0;
    Cloud<parcel>           0;
    Cloud<passiveParticle>  0;
    Cloud<trackedParticle>  0;
    CoEuler             0;
    CompositionModel    0;
    ConeInjection       0;
    Constant            0;
    ConstantRateDevolatilisation    0;
    CrankNicholson      0;
    CrossPowerLaw       0;
    Cs                  0;
    DIC                 0;
    DICGaussSeidel      0;
    DILU                0;
    DILUGaussSeidel     0;
    DataEntry           0;
    DeardorffDiffStress 0;
    DispersionModel     0;
    DispersionRASModel  0;
    DragModel           0;
    ETAB                0;
    Ergun               0;
    Euler               0;
    EulerImplicit       0;
    EulerRotation       0;
    extendedCellToFaceStencil 0;
    FDIC                0;
    FaceCellWave        0;
    GAMG                0;
    GAMGAgglomeration   0;
    GAMGInterface       0;
    GAMGInterfaceField  0;
    Gamma               0;
    Gamma01             0;
    GammaV              0;
    Gauss               0;
    GaussSeidel         0;
    Gibilaro            0;
    Gidaspow            0;
    GidaspowErgunWenYu  0;
    GidaspowSchillerNaumann 0;
    GradientDispersionRAS   0;
    Gulders             0;
    GuldersEGR          0;
    H2O                 0;
    HashTable           0;
    HeatTransferModel   0;
    HerschelBulkley     0;
    HrenyaSinclair      0;
    IC8H18              0;
    ICCG                0;
    IDDESDelta          0;
    IDEA                0;
    IFstream            0;
    IOMap<dictionary>   0;
    IOPtrList<MRFZone>  0;
    IOPtrList<coordinateSystem> 0;
    IOPtrList<injector> 0;
    IOPtrList<porousZone>   0;
    IOobject            0;
    InjectionModel      0;
    IntegrationScheme   0;
    JohnsonJackson      0;
    KRR4                0;
    KinematicCloud<basicKinematicParcel> 0;
    KinematicCloud<basicReactingParcel> 0;
    KinematicCloud<basicThermoParcel>   0;
    KinematicParcel<basicReactingParcel> 0;
    KinematicParcel<basicThermoParcel>  0;
    LESModel            0;
    LESdelta            0;
    LESfilter           0;
    LISA                0;
    LRR                 0;
    LRRDiffStress       0;
    LamBremhorstKE      0;
    LaunderGibsonRSTM   0;
    LaunderSharmaKE     0;
    LienCubicKE         0;
    LienCubicKELowRe    0;
    LienLeschzinerLowRe 0;
    MB                  0;
    MC                  0;
    MCV                 0;
    MUSCL               0;
    MUSCL01             0;
    MUSCLV              0;
    ManualInjection     0;
    MarshakRadiation    0;
    MarshakRadiationFixedT  0;
    MassTransferModel   0;
    MeshWave            0;
    Minmod              0;
    MinmodV             0;
    N2                  0;
    NSRDSfunc0          0;
    NSRDSfunc1          0;
    NSRDSfunc14         0;
    NSRDSfunc2          0;
    NSRDSfunc3          0;
    NSRDSfunc4          0;
    NSRDSfunc5          0;
    NSRDSfunc6          0;
    NSRDSfunc7          0;
    Newtonian           0;
    NoDispersion        0;
    NoDrag              0;
    NoHeatTransfer      0;
    NoInjection         0;
    NoMassTransfer      0;
    NoSurfaceReaction   0;
    NonlinearKEShih     0;
    ODE                 0;
    ODESolver           0;
    OFstream            0;
    ORourke             0;
    OSPRE               0;
    OSPREV              0;
    P1                  0;
    PBiCG               0;
    PCG                 0;
    PackedList          0;
    ParSortableList     0;
    PatchToPatchInterpolation 0;
    Phi                 0;
    PointEdgeWave       0;
    POSIX               0;
    Prandtl             0;
    PrimitivePatch      0;
    Pstream             0;
    QUICK               0;
    QUICKV              0;
    QZeta               0;
    RASModel            0;
    RK                  0;
    RNGkEpsilon         0;
    RanzMarshall        0;
    ReactingCloud<basicReactingParcel>  0;
    ReactingParcel<basicReactingParcel> 0;
    Rebound             0;
    ReitzDiwakar        0;
    ReitzKHRT           0;
    RosinRammler        0;
    RutlandFlashBoil    0;
    SDA                 0;
    SFCD                0;
    SFCDV               0;
    SHF                 0;
    SIBS                0;
    SKA                 0;
    SLTS                0;
    SRFModel            0;
    SRFVelocity         0;
    STARCDRotation      0;
    Schaeffer           0;
    SchillerNaumann     0;
    SinclairJackson     0;
    SingleKineticRateDevolatilisation 0;
    SingleMixtureFraction   0;
    Smagorinsky         0;
    SpalartAllmaras     0;
    SpalartAllmarasDDES 0;
    SpalartAllmarasIDDES    0;
    SphereDrag          0;
    StandardWallInteraction 0;
    StaticHashTable     0;
    StochasticDispersionRAS 0;
    SuperBee            0;
    SuperBeeV           0;
    SurfaceReactionModel 0;
    Syamlal             0;
    SyamlalOBrien       0;
    SyamlalRogersOBrien 0;
    TAB                 0;
    Table               0;
    ThermoCloud<basicReactingParcel>    0;
    ThermoCloud<basicThermoParcel>      0;
    ThermoParcel<basicReactingParcel>   0;
    ThermoParcel<basicThermoParcel>     0;
    UMIST               0;
    UMISTV              0;
    UpwindFitData<cubicUpwindFitPolynomial> 0;
    UpwindFitData<quadraticLinearUpwindFitPolynomial> 0;
    UpwindFitData<quadraticUpwindFitPolynomial>     0;
    WallInteractionModel 0;
    WenYu               0;
    aC11H10             0;
    absorptionEmissionModel 0;
    addCell             0;
    addFace             0;
    addPatchCellLayer   0;
    addPoint            0;
    advective           0;
    algebraicPair       0;
    alphaContactAngle   0;
    alphaFixedPressure  0;
    alphatWallFunction  0;
    angularOscillatingDisplacement  0;
    angularOscillatingVelocity  0;
    anisotropic         0;
    ash                 0;
    atomizationModel    0;
    attachDetach        0;
    autoDensity         0;
    autoHexMeshDriver   0;
    autoLayerDriver     0;
    autoRefineDriver    0;
    autoSnapDriver      0;
    bC11H10             0;
    backgroundMeshDecomposition 0;
    backward            0;
    basePatch           0;
    basicKinematicCloud 0;
    basicKinematicParcel 0;
    basicMixture        0;
    basicReactingCloud  0;
    basicReactingParcel 0;
    basicThermo         0;
    basicThermoCloud    0;
    basicThermoParcel   0;
    biLinearFit         0;
    binaryAbsorptionEmission 0;
    blended             0;
    blobsSheetAtomization   0;
    blobsSwirlInjector  0;
    booleanSurface      0;
    boundaryCutter      0;
    boundaryMesh        0;
    boundaryToFace      0;
    boundedBackward     0;
    boxToCell           0;
    boxToFace           0;
    boxToPoint          0;
    breakupModel        0;
    calculated          0;
    cell                0;
    cellClassification  0;
    cellCuts            0;
    cellDistFuncs       0;
    cellLimited         0;
    cellList            0;
    cellLooper          0;
    cellMDLimited       0;
    cellMotion          0;
    cellPoint           0;
    cellPointFace       0;
    cellPointWeight     0;
    cellSet             0;
    cellSizeControlSurfaces 0;
    cellToCell          0;
    cellToFace          0;
    cellToPoint         0;
    cellZone            0;
    centredCECStencil   0;
    centredCFCStencil   0;
    chemistryReader     0;
    chemistrySolver     0;
    chemkinReader       0;
    clippedLinear       0;
    cloud               0;
    cloudAbsorptionEmission 0;
    cloudScatter        0;
    collisionModel      0;
    combineFaces        0;
    commSchedule        0;
    commonRailInjector  0;
    compound            0;
    constInjector       0;
    constant            0;
    constantAbsorptionEmission  0;
    constantAlphaContactAngle   0;
    constantScatter     0;
    coordinateRotation  0;
    coordinateSystem    0;
    coordinateSystems   0;
    corrected           0;
    coupled             0;
    cubeRootVol         0;
    cubic               0;
    cubicUpwindFit      0;
    curve               0;
    cyclic              0;
    cyclicLduInterface  0;
    cyclicLduInterfaceField 0;
    cylinderToCell      0;
    cylindrical         0;
    decompositionMethod 0;
    definedHollowConeInjector 0;
    definedInjector     0;
    definedPressureSwirlInjector 0;
    diagTensorField     0;
    diagonal            0;
    dictionary          0;
    dimensionSet        1;
    mappedBase    0;
    mappedPatch   0;
    mappedVelocityFlux 0;
    directionMixed      0;
    directional         0;
    disallowGenericFvPatchField 0;
    disallowGenericPointPatchField 0;
    disallowGenericPolyPatch    0;
    dispersionLESModel  0;
    dispersionModel     0;
    dispersionRASModel  0;
    displacementComponentLaplacian 0;
    displacementInterpolation 0;
    displacementLaplacian 0;
    displacementSBRStress 0;
    distanceSurface     0;
    Distribution        0;
    downwind            0;
    dragModel           0;
    duplicatePoints     0;
    dx                  0;
    dynMixedSmagorinsky 0;
    dynOneEqEddy        0;
    dynSmagorinsky      0;
    dynamicAlphaContactAngle 0;
    dynamicFvMesh       0;
    dynamicInkJetFvMesh 0;
    dynamicMotionSolverFvMesh 0;
    dynamicRefineFvMesh 0;
    edgeIntersections   0;
    edgeList            0;
    edgeSurface         0;
    empty               0;
    engineMesh          0;
    enrichedPatch       0;
    epsilonWallFunction 0;
    errorDrivenRefinement   0;
    evaporationModel    0;
    exponential         0;
    extendedLeastSquares    0;
    extendedLeastSquaresVectors 0;
    face                0;
    faceAreaPair        0;
    faceCoupleInfo      0;
    faceLimited         0;
    faceList            0;
    faceMDLimited       0;
    faceSet             0;
    faceToCell          0;
    faceToFace          0;
    faceToPoint         0;
    faceZone            0;
    fan                 0;
    featureEdgeMesh     0;
    fieldToCell         0;
    file                0;
    fileName            2;
    filteredLinear      0;
    filteredLinear2     0;
    filteredLinear2V    0;
    filteredLinear3     0;
    filteredLinear3V    0;
    fixedEnthalpy       0;
    buoyantPressure 0;
    fixedFluxBoussinesqBuoyantPressure 0;
    fixedFluxPressure   0;
    fixedGradient       0;
    fixedInternalEnergy 0;
    fixedInternalValue  0;
    fixedNormalSlip     0;
    fixedPressureCompressibleDensity 0;
    fixedUnburntEnthalpy 0;
    fixedValue          0;
    flowRateInletVelocity   0;
    fluxCorrectedVelocity   0;
    foamChemistryReader 0;
    foamFile            0;
    forceCoeffs         0;
    forces              0;
    fourth              0;
    freestream          0;
    freestreamPressure  0;
    frictionalStressModel   0;
    functionObject      0;
    fv                  0;
    fvMesh              0;
    fvMeshDistribute    0;
    fvMotionSolver      0;
    fvPatchField        0;
    fvScalarMatrix      0;
    fvSchemes           0;
    fvSphericalTensorMatrix 0;
    fvSymmTensorMatrix  0;
    fvTensorMatrix      0;
    fvVectorMatrix      0;
    fvsPatchField       0;
    general             0;
    generic             0;
    genericPatch        0;
    geomCellLooper      0;
    geometricSurfacePatch   0;
    global              0;
    globalIndexAndTransform 0;
    globalMeshData      0;
    globalPoints        0;
    gnuplot             0;
    gradientDispersionRAS   0;
    gradientEnthalpy        0;
    gradientInternalEnergy  0;
    gradientUnburntEnthalpy 0;
    granularPressureModel   0;
    hCombustionThermo   0;
    hMixtureThermo<dieselMixture<sutherlandTransport<specieThermo<janafThermo<perfectGas>>>>> 0;
    hMixtureThermo<homogeneousMixture<constTransport<specieThermo<hConstThermo<perfectGas>>>>> 0;
    hMixtureThermo<homogeneousMixture<sutherlandTransport<specieThermo<janafThermo<perfectGas>>>>> 0;
    hMixtureThermo<inhomogeneousMixture<constTransport<specieThermo<hConstThermo<perfectGas>>>>> 0;
    hMixtureThermo<inhomogeneousMixture<sutherlandTransport<specieThermo<janafThermo<perfectGas>>>>> 0;
    hMixtureThermo<multiComponentMixture<sutherlandTransport<specieThermo<janafThermo<perfectGas>>>>> 0;
    hMixtureThermo<reactingMixture> 0;
    hMixtureThermo<veryInhomogeneousMixture<constTransport<specieThermo<hConstThermo<perfectGas>>>>> 0;
    hMixtureThermo<veryInhomogeneousMixture<sutherlandTransport<specieThermo<janafThermo<perfectGas>>>>> 0;
    hThermo<pureMixture<constTransport<specieThermo<hConstThermo<perfectGas>>>>> 0;
    hThermo<pureMixture<sutherlandTransport<specieThermo<hConstThermo<perfectGas>>>>> 0;
    hThermo<pureMixture<sutherlandTransport<specieThermo<janafThermo<perfectGas>>>>> 0;
    harmonic            0;
    heatTransferModel   0;
    hexCellLooper       0;
    hexRef8             0;
    hhuCombustionThermo 0;
    hhuMixtureThermo<egrMixture<constTransport<specieThermo<hConstThermo<perfectGas>>>>> 0;
    hhuMixtureThermo<egrMixture<sutherlandTransport<specieThermo<janafThermo<perfectGas>>>>> 0;
    hhuMixtureThermo<homogeneousMixture<constTransport<specieThermo<hConstThermo<perfectGas>>>>> 0;
    hhuMixtureThermo<homogeneousMixture<sutherlandTransport<specieThermo<janafThermo<perfectGas>>>>> 0;
    hhuMixtureThermo<inhomogeneousMixture<constTransport<specieThermo<hConstThermo<perfectGas>>>>> 0;
    hhuMixtureThermo<inhomogeneousMixture<sutherlandTransport<specieThermo<janafThermo<perfectGas>>>>> 0;
    hhuMixtureThermo<veryInhomogeneousMixture<constTransport<specieThermo<hConstThermo<perfectGas>>>>> 0;
    hhuMixtureThermo<veryInhomogeneousMixture<sutherlandTransport<specieThermo<janafThermo<perfectGas>>>>> 0;
    hierarchical        0;
    hollowConeInjector  0;
    iC3H8O              0;
    indexedOctree       0;
    indexedParticle     0;
    injectorModel       0;
    injectorType        0;
    inletOutlet         0;
    inletOutletTotalTemperature 0;
    interfaceCompression 0;
    intersectedSurface  0;
    inverseDistance     0;
    inverseFaceDistance 0;
    inversePointDistance 0;
    inverseVolume       0;
    isoSurface          0;
    isoSurfaceCell      0;
    jplot               0;
    jumpCyclic          0;
    kEpsilon            0;
    kOmega              0;
    kOmegaSST           0;
    kOmegaSSTSAS        0;
    kqRWallFunction     0;
    kinematicCloud      0;
    labelField          0;
    labelList           0;
    labelListList       0;
    labelToCell         0;
    labelToFace         0;
    labelToPoint        0;
    laminar             0;
    laminarFlameSpeed   0;
    laplace             0;
    layerAdditionRemoval 0;
    layered             0;
    lduInterface        0;
    lduInterfaceField   0;
    lduMatrix           1;
    lduMesh             0;
    leastSquares        0;
    leastSquaresVectors 0;
    level               2;
    limitWith           0;
    limited             0;
    limitedCubic        0;
    limitedCubic01      0;
    limitedCubicV       0;
    limitedGamma        0;
    limitedLimitedCubic 0;
    limitedLimitedLinear 0;
    limitedLinear       0;
    limitedLinear01     0;
    limitedLinearV      0;
    limitedMUSCL        0;
    limitedSurfaceInterpolationScheme 0;
    limitedVanLeer      0;
    linear              0;
    linearFit           0;
    linearUpwind        0;
    linearUpwindV       0;
    liquid              0;
    locDynOneEqEddy     0;
    localBlended        0;
    localMax            0;
    localMin            0;
    localPointRegion    0;
    lowReOneEqEddy      0;
    manual              0;
    meshCutAndRemove    0;
    meshCutter          0;
    meshModifier        0;
    meshRefinement      0;
    meshSearch          0;
    meshToMesh          0;
    metis               0;
    midPoint            0;
    midPointAndFace     0;
    mixed               0;
    mixedEnthalpy       0;
    mixedInternalEnergy 0;
    mixedSmagorinsky    0;
    mixedUnburntEnthalpy 0;
    mixerFvMesh         0;
    modifyCell          0;
    modifyFace          0;
    modifyPoint         0;
    motionDiffusivity   0;
    motionDirectional   0;
    motionSmoother      0;
    motionSolver        0;
    movingConeTopoFvMesh 0;
    movingWallVelocity  0;
    muSgsSpalartAllmarasWallFunction 0;
    multiDirRefinement  0;
    multiHoleInjector   0;
    multiLevel          1;
    multivariateSelection 0;
    mutRoughWallFunction 0;
    mutSpalartAllmarasStandardRoughWallFunction  0;
    mutSpalartAllmarasStandardWallFunction  0;
    mutSpalartAllmarasWallFunction  0;
    mutWallFunction     0;
    nC3H8O              0;
    nbrToCell           0;
    nearestToCell       0;
    nearestToPoint      0;
    noAbsorptionEmission 0;
    noDragModel         0;
    noRadiation         0;
    none                0;
    normal              0;
    normalToFace        0;
    nuSgsSpalartAllmarasWallFunction 0;
    nutRoughWallFunction 0;
    nutSpalartAllmarasStandardRoughWallFunction  0;
    nutSpalartAllmarasStandardWallFunction  0;
    nutSpalartAllmarasWallFunction  0;
    nutWallFunction     0;
    obj                 0;
    objectRegistry      0;
    off                 0;
    omegaWallFunction   0;
    oneEqEddy           0;
    orientedSurface     0;
    oscillatingDisplacement 0;
    oscillatingFixedValue 0;
    oscillatingVelocity 0;
    outletInlet         0;
    outletStabilised    0;
    pair                0;
    parabolicCylindrical 0;
    parcel              0;
    partialSlip         0;
    passiveParticle     0;
    patch               0;
    patchToFace         0;
    patchZones          0;
    pdf                 0;
    perfectInterface    0;
    pointIndexHitList   0;
    pointPatchField     0;
    pointScalarField    0;
    pointScalarField::DimensionedInternalField 0;
    pointSet            0;
    pointSphericalTensorField 0;
    pointSphericalTensorField::DimensionedInternalField 0;
    pointSymmTensorField 0;
    pointSymmTensorField::DimensionedInternalField 0;
    pointTensorField    0;
    pointTensorField::DimensionedInternalField 0;
    pointToCell         0;
    pointToFace         0;
    pointToPoint        0;
    pointVectorField    0;
    pointVectorField::DimensionedInternalField 0;
    pointZone           0;
    polyBoundaryMesh    0;
    polyMesh            0;
    polyMeshGeometry    0;
    polyMeshInfo        0;
    polyTopoChange      0;
    polyTopoChanger     0;
    powerLaw            0;
    pressureDirectedInletOutletVelocity 0;
    pressureDirectedInletVelocity 0;
    pressureInletOutletVelocity 0;
    pressureInletUniformVelocity 0;
    pressureInletVelocity 0;
    pressureNormalInletOutletVelocity 0;
    pressureSwirlInjector 0;
    primitiveMesh       0;
    primitiveMeshGeometry 0;
    probes              0;
    processor           0;
    processorLduInterface 0;
    processorLduInterfaceField 0;
    pureMixture<constTransport<specieThermo<hConstThermo<perfectGas>>>> 0;
    pureMixture<sutherlandTransport<specieThermo<hConstThermo<perfectGas>>>> 0;
    pureMixture<sutherlandTransport<specieThermo<janafThermo<perfectGas>>>> 0;
    quadratic           0;
    quadraticFit        0;
    quadraticLinearFit  0;
    quadraticLinearUpwindFit 0;
    quadraticUpwindFit  0;
    radiationModel      0;
    raw                 0;
    reactingCloud       0;
    reaction            0;
    realizableKE        0;
    refinementHistory   0;
    refinementIterator  0;
    reflect             0;
    regIOobject         0;
    regionSplit         0;
    regionToCell        0;
    remove              0;
    removeCell          0;
    removeCells         0;
    removeFace          0;
    removeFaces         0;
    removePoint         0;
    removePoints        0;
    reverseLinear       0;
    rotatedBoxToCell    0;
    rotatingPressureInletOutletVelocity 0;
    rotatingTotalPressure 0;
    sampledPatch        0;
    sampledPlane        0;
    sampledSet          0;
    sampledSurface      0;
    saturateEvaporationModel 0;
    scalarAverageField  0;
    scalarField         0;
    scalarRange         0;
    scaleSimilarity     0;
    scatterModel        0;
    searchableBox       0;
    searchableSurface   0;
    sequential          0;
    setUpdater          0;
    sets                0;
    shapeList           0;
    shapeToCell         0;
    simple              0;
    sixDoFRigidBodyMotionConstraint 0;
    skewCorrected       0;
    skewCorrectionVectors 0;
    sliced              0;
    slidingInterface    0;
    slip                0;
    smooth              0;
    smoothSolver        0;
    solid               0;
    solidBodyMotionFunction 0;
    solidBodyMotionFvMesh 0;
    solution            0;
    spectEddyVisc       0;
    sphereToCell        0;
    spherical           0;
    sphericalTensorAverageField 0;
    sphericalTensorField 0;
    standardDragModel   0;
    standardEvaporationModel 0;
    staticFvMesh        0;
    steadyState         0;
    stl                 0;
    string              0;
    stochasticDispersionRAS 0;
    supersonicFreestream 0;
    surfaceFeatures     0;
    surfaceInterpolation 0;
    surfaceInterpolationScheme 0;
    surfaceIntersection 0;
    surfaceNormalFixedValue 0;
    surfacePatch        0;
    surfacePatchIOList  0;
    surfaceScalarField  0;
    surfaceScalarField::DimensionedInternalField 0;
    surfaceSlipDisplacement 0;
    surfaceSphericalTensorField 0;
    surfaceSphericalTensorField::DimensionedInternalField 0;
    surfaceSymmTensorField 0;
    surfaceSymmTensorField::DimensionedInternalField 0;
    surfaceTensorField 0;
    surfaceTensorField::DimensionedInternalField 0;
    surfaceToCell       0;
    surfaceToPoint      0;
    surfaceVectorField  0;
    surfaceVectorField::DimensionedInternalField 0;
    surfaceWriter       0;
    surfaces            0;
    swirlInjector       0;
    symmTensorAverageField 0;
    symmTensorField     0;
    symmetryPlane       0;
    syringePressure     0;
    tensorAverageField  0;
    tensorField         0;
    tetDecomposedPolyMesh 0;
    thermoCloud         0;
    thermophysicalFunction 0;
    time                0;
    timeVaryingAlphaContactAngle 0;
    timeVaryingFlowRateInletVelocity 0;
    timeVaryingMappedFixedValue 0;
    timeVaryingTotalPressure 0;
    timeVaryingUniformFixedValue 0;
    timer               0;
    topoAction          0;
    topoCellLooper      0;
    topoChangerFvMesh   0;
    topoSet             0;
    topoSetSource       0;
    toroidal            0;
    totalPressure       0;
    totalTemperature    0;
    trackedParticle     0;
    trajectory          0;
    transform           0;
    treeDataCell        0;
    treeDataFace        0;
    treeDataTriSurface  0;
    treeLeaf            0;
    treeNode            0;
    triSurface          0;
    triSurfaceMesh      0;
    turbulenceModel     0;
    turbulentHeatFluxTemperature 0;
    turbulentInlet      0;
    turbulentIntensityKineticEnergyInlet 0;
    turbulentMixingLengthDissipationRateInlet 0;
    turbulentMixingLengthFrequencyInlet 0;
    uncorrected         0;
    undoableMeshCutter  0;
    uniform             0;
    uniformFixedValue   0;
    unitInjector        0;
    upwind              0;
    upwindCFCStencil    0;
    value               0;
    vanAlbada           0;
    vanAlbadaV          0;
    vanDriest           0;
    vanLeer             0;
    vanLeer01           0;
    vanLeerV            0;
    vector2DField       0;
    vectorAverageField  0;
    vectorField         0;
    velocityComponentLaplacian 0;
    velocityLaplacian   0;
    viscosityModel      0;
    volPointInterpolation 0;
    volScalarField      0;
    volScalarField::DimensionedInternalField 0;
    volSphericalTensorField 0;
    volSphericalTensorField::DimensionedInternalField 0;
    volSymmTensorField  0;
    volSymmTensorField::DimensionedInternalField 0;
    volTensorField      0;
    volTensorField::DimensionedInternalField 0;
    volVectorField      0;
    volVectorField::DimensionedInternalField 0;
    vtk                 0;
    walkPatch           0;
    wall                0;
    wallHeatTransfer    0;
    wallLayerCells      0;
    wallModel           0;
    waveTransmissive    0;
    wedge               0;
    weighted            0;
    word                2;
    writer              0;
    xmgr                0;
    zeroGradient        0;
    zoneToCell          0;
    zoneToFace          0;
    zoneToPoint         0;
}


DimensionedConstants
{
    unitSet             CGS; // SI // USCS

    CGSCoeffs
    {
        universal
        {
            c               c [ 0 1 -1 0 0 0 0 ] 2.99792e+10; // speed of light in vacuum (cm/s)
            G               G [ -1 3 -2 0 0 0 0 ] 6.67429e-8; // gravitational constant (cm^3/(gs^2))
            h               h [ 1 2 -1 0 0 0 0 ] 6.62607e-27; // Planck's constant (erg.s)
        }
        electromagnetic
        {
            e               e [ 0 0 1 0 0 1 0 ] 4.803204e-10; // elementary charge (statcoulomb)
        }
        atomic
        {
            me              me [ 1 0 0 0 0 0 0 ] 9.10938e-28; // electron mass (g)
            mp              mp [ 1 0 0 0 0 0 0 ] 1.67262e-24; // proton mass (g)
        }
        physicoChemical
        {
            mu              mu [ 1 0 0 0 0 0 0 ] 1.66054e-24; // atomic mass unit (g)
            k               k [ 1 2 -2 -1 0 0 0 ] 1.38065e-16; // Boltzman constant (erg/K)
        }
        standard
        {
            //- Standard pressure [Pa]
            Pstd            Pstd [ 1 -1 -2 0 0 0 0 ] 1000000; // 1 bar (barye)
            //- Standard temperature [degK]
            Tstd            Tstd [ 0 0 0 1 0 0 0 ] 298.15; // should be same as in SI unit system
        }
    }

    SICoeffs
    {
        universal
        {
            c               c [ 0 1 -1 0 0 0 0 ] 2.99792e+08;
            G               G [ -1 3 -2 0 0 0 0 ] 6.67429e-11;
            h               h [ 1 2 -1 0 0 0 0 ] 6.62607e-34;
        }
        electromagnetic
        {
            e               e [ 0 0 1 0 0 1 0 ] 1.60218e-19;
        }
        atomic
        {
            me              me [ 1 0 0 0 0 0 0 ] 9.10938e-31;
            mp              mp [ 1 0 0 0 0 0 0 ] 1.67262e-27;
        }
        physicoChemical
        {
            mu              mu [ 1 0 0 0 0 0 0 ] 1.66054e-27;
            k               k [ 1 2 -2 -1 0 0 0 ] 1.38065e-23;
        }
        standard
        {
            //- Standard pressure [Pa]
            Pstd            Pstd [ 1 -1 -2 0 0 0 0 ] 100000;
            //- Standard temperature [degK]
            Tstd            Tstd [ 0 0 0 1 0 0 0 ] 298.15;
        }
    }
    USCSCoeffs
    {
        universal
        {
            c               c [ 0 1 -1 0 0 0 0 ] 9.83558e+08;
            G               G [ -1 3 -2 0 0 0 0 ] 1.06909e-09;
            h               h [ 1 2 -1 0 0 0 0 ] 1.57234e-32;
        }
        electromagnetic
        {
            e               e [ 0 0 1 0 0 1 0 ] 1.60218e-19;
        }
        atomic
        {
            me              me [ 1 0 0 0 0 0 0 ] 2.00825e-30;
            mp              mp [ 1 0 0 0 0 0 0 ] 3.68746e-27;
        }
        physicoChemical
        {
            mu              mu [ 1 0 0 0 0 0 0 ] 3.66083e-27;
            k               k [ 1 2 -2 -1 0 0 0 ] 1.82012e-22;
        }
        standard
        {
            //- Standard pressure [lbm/ft^2]
            Pstd            Pstd [ 1 -1 -2 0 0 0 0 ] 2088.6;
            //- Standard temperature [degR]
            Tstd            Tstd [ 0 0 0 1 0 0 0 ] 536.67;
        }
    }
}


// ************************************************************************* //
